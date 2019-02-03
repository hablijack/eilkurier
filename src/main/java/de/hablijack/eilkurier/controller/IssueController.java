package de.hablijack.eilkurier.controller;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.moodysalem.phantomjs.wrapper.PhantomJS;
import com.moodysalem.phantomjs.wrapper.RenderException;
import com.moodysalem.phantomjs.wrapper.beans.BannerInfo;
import com.moodysalem.phantomjs.wrapper.beans.Margin;
import com.moodysalem.phantomjs.wrapper.beans.PaperSize;
import com.moodysalem.phantomjs.wrapper.beans.PaperSize.Orientation;
import com.moodysalem.phantomjs.wrapper.beans.ViewportDimensions;
import com.moodysalem.phantomjs.wrapper.enums.RenderFormat;
import com.moodysalem.phantomjs.wrapper.enums.SizeUnit;

import de.hablijack.eilkurier.domain.CurrentUser;
import de.hablijack.eilkurier.domain.EilkurierUser;
import de.hablijack.eilkurier.domain.Info;
import de.hablijack.eilkurier.service.InfoService;
import de.hablijack.eilkurier.service.UserService;

@Controller
class IssueController {

	@Autowired
	private InfoService infoService;
	@Autowired
	private UserService userService;
	@Value("${url.absolute.path}")
	private String urlAbsolutePath;
	@Value("${url.protocol}")
	private String urlProtocol;

	@RequestMapping("/read-eilkurier.html")
	public String read(Authentication authentication, Model model) {
		CurrentUser currentUser = (CurrentUser) authentication.getPrincipal();
		List<Info> userInfos = infoService.investigateInfosForUser(currentUser.getUser());
		model.addAttribute("infos", userInfos);
		model.addAttribute("currentDate", new Date());
		return "your_issue";
	}

	@RequestMapping("/read-eilkurier.pdf")
	public void readasPdf(@RequestParam("userid") Long userId, HttpServletResponse response)
			throws IOException, RenderException {
		final InputStream html = new URL(urlProtocol + urlAbsolutePath + "/render-eilkurier-for-user?userid=" + userId)
				.openStream();
		renderPDF(html, response);
	}

	/*@RequestMapping("/eilkurier.pdf")
	public void readasPdf(@RequestParam("userid") Long userId, HttpServletResponse response)
			throws IOException, RenderException {
		final InputStream html = new URL(urlProtocol + urlAbsolutePath + "/eilkurier.html?userid=" + userId)
				.openStream();
		renderPDF(html, response);
	}*/

	@RequestMapping("/render-eilkurier-for-user")
	public String read(Model model, @RequestParam("userid") Long userId) {
		EilkurierUser user = userService.getUserById(userId).get();
		List<Info> userInfos = infoService.investigateInfosForUser(user);
		model.addAttribute("infos", userInfos);
		model.addAttribute("currentDate", new Date());
		return "your_issue";
	}

	private void renderPDF(InputStream stream, HttpServletResponse response) throws IOException, RenderException {
		final PaperSize landscapeNewspaper = new PaperSize(420, SizeUnit.mm, 297, SizeUnit.mm, Orientation.LANDSCAPE);
		final ViewportDimensions viewPort = new ViewportDimensions(1920, 1080);
		final InputStream pdf = PhantomJS.render(null, stream, landscapeNewspaper, viewPort, Margin.ZERO,
				BannerInfo.EMPTY, BannerInfo.EMPTY, RenderFormat.PDF, 10000L, 100L);
		response.setContentType("application/pdf");
		response.setContentLength((int) pdf.available());
		response.setHeader("Content-Disposition", "inline;filename=\"" + "Eilkurier.pdf" + "\"");
		FileCopyUtils.copy(pdf, response.getOutputStream());
	}

}
