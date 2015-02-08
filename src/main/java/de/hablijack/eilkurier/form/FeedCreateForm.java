package de.hablijack.eilkurier.form;

import org.hibernate.validator.constraints.NotEmpty;

public class FeedCreateForm {

    @NotEmpty
    private String name = "";
    
    @NotEmpty
    private String url = "";
    
    private String description = "";

    private String picture = "";
    
    private String pictureContentType;
    
	public String getPictureContentType() {
		return pictureContentType;
	}

	public void setPictureContentType(String pictureContentType) {
		this.pictureContentType = pictureContentType;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}


}
