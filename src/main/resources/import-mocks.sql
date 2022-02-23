/* USERS */
INSERT INTO eilkurier_user(id, email, password_hash, role, wizzard_run_flag) VALUES (1, 'root@eilkurier.com', '$2a$12$lR8br37GgROfZH2raCuA6OXk8VpNkq9M3ipJm71ndkRDr.lTbfG6i', 'ADMIN', true);
INSERT INTO eilkurier_user(id, email, password_hash, role, wizzard_run_flag) VALUES (2, 'christoph.habel@posteo.de', '$2a$12$lR8br37GgROfZH2raCuA6OXk8VpNkq9M3ipJm71ndkRDr.lTbfG6i', 'USER', false);
INSERT INTO eilkurier_user(id, email, password_hash, role, wizzard_run_flag) VALUES (3, 'christoph.habel@gmx.de', '$2a$12$lR8br37GgROfZH2raCuA6OXk8VpNkq9M3ipJm71ndkRDr.lTbfG6i', 'USER', true);

/* FEEDS */
INSERT INTO feed(id, name, description, picture, picture_content_type, url) VALUES (1, 'Golem.de News', 'IT-News fuer Profis', 'https://www.golem.de/staticrl/images/golem-rss.png', 'image/png', 'https://rss.golem.de/rss.php?feed=ATOM2.0');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (2, 'heise online News', 'Nachrichten nicht nur aus der Welt der Computer', 'https://1.f.ix.de/icons/ho/heise_online_min.gif', 'image/gif', 'https://www.heise.de/newsticker/heise-atom.xml');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (3, 'Adafruit Learning', 'Adafruit Learning System | Latest Published Guides', 'https://d2794n4cyhr13z.cloudfront.net/assets/c164befb381ecf49c07e8b058f6894e6.png', 'image/png', 'https://learn.adafruit.com/feed');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (4, 'OMG! Ubuntu!', 'Ubuntu News', 'http://www.omgubuntu.co.uk/wp-content/themes/omgubuntu-theme-3.6.1/images/logo.png', 'image/png', 'http://feeds.feedburner.com/d0od?format=xml');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (5, 'Winfuture', 'Winfuture News', 'https://i.wfcdn.de/5/header_left.jpg', 'image/jpg', 'http://static.winfuture.de/feeds/WinFuture-News-rss2.0.xml');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (6, 'ZDNet', 'IT-News und Hintergrundartikel für IT-Manager', 'http://www.zdnet.de/wp-content/themes/korasa-zdnet-de/assets/images/logos/zdnet-de-gray-drp.png', 'image/png', 'http://www.zdnet.de/feed/');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (7, 't3n digital pioneers', 't3n digital pioneers - News', 'https://t3n.de/_Resources/Static/Packages/Yeebase.t3nDe/Images/Rss/logo.png', 'image/png', 'https://t3n.de/rss.xml');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (8, 'Engadget Deutschland', 'Gadgets und elektronische Geräte', 'http://de.engadget.com/assets/images/Engadget_DE_Black.png', 'image/png', 'http://de.engadget.com/rss.xml');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (9, 'Hackaday', 'Fresh hacks every day', 'https://secure.gravatar.com/blavatar/5560f98f805877b0e332f191cb9e0af3?s=96&d=https%3A%2F%2Fs2.wp.com%2Fi%2Fbuttonw-com.png', 'image/png', 'https://hackaday.com/feed/');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (10, 'Lifehacker', 'Tips, tricks and downloads for getting things done', 'https://t3n.de/_Resources/Static/Packages/Yeebase.t3nDe/Images/Rss/logo.png', 'image/png', 'https://lifehacker.com/rss');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (11, 'Instructables', 'Recent Instructables', 'http://www.instructables.com/static/img/instructables-logo@2x.png', 'image/png', 'http://www.instructables.com/rss.xml');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (12, 'Heise Make', 'Kreativ mit Technik', 'https://1.f.ix.de/make/icons/make_logo.png', 'image/png', 'https://www.heise.de/make/rss/hardware-hacks-atom.xml');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (13, 'GITARRE & BASS', 'Das Musiker-Fachmagazin', 'https://www.gitarrebass.de/wp-content/uploads/2015/04/GITARRE-BASS_Logo.png', 'image/png', 'https://www.gitarrebass.de/feed/');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (14, 'Guitar', 'Magazin für Gitarristen und Bassisten', 'https://www.guitar.de/fileadmin/templates/img/guitar_logo_500.png', 'image/png', 'https://www.guitar.de/rss/rss-alle-meldungen/');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (15, 'Keys', 'Musik und Computer', 'https://www.keys.de/fileadmin/templates/keys/img/KEYS_Logo.png', 'image/png', 'https://www.keys.de/rss/rss-alle-meldungen/');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (16, 'DrUmHeaDS', '100% Schlagzeug', 'https://www.drumheads.de/fileadmin/templates/img/DH_Logo_600.png', 'image/png', 'https://www.drumheads.de/index.php?id=39');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (17, 'SOUNDCHECK', 'Das Bandmagazin', 'https://www.soundcheck.de/fileadmin/templates/img/SC_Logo_290.png', 'image/png', 'https://www.soundcheck.de/index.php?id=38');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (18, 'Digital Present ', 'Tagesspiegel', 'http://digitalpresent.tagesspiegel.de/images/tagesspiegel.png', 'image/png', 'http://digitalpresent.tagesspiegel.de/feed.xml');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (19, 'Welt', 'Nachrichten - Aktuelle Nachrichten von WELT', 'https://www.welt.de/rss-logo.png', 'image/png', 'https://www.welt.de/feeds/latest.rss');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (20, 'Wirtschafts Woche', 'Das Online-Portal des führenden Wirtschaftsmagazins in Deutschland. Das Entscheidende zu Unternehmen, Finanzen,Erfolg und Technik.', 'http://www.wiwo.de/images/wiwo-logo-main/10269318/5-formatOriginal.png', 'image/png', 'http://www.wiwo.de/contentexport/feed/rss/schlagzeilen');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (21, 'ZEIT ONLINE', 'Nachrichten, Hintergründe und Debatten', 'http://img.zeit.de/bilder/elemente_01_06/logos/homepage_top.gif', 'image/gif', 'http://newsfeed.zeit.de/index');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (22, 'SPIEGEL ONLINE', 'Deutschlands führende Nachrichtenseite. Alles Wichtige aus Politik, Wirtschaft, Sport, Kultur, Wissenschaft, Technik und mehr.', 'http://www.spiegel.de/static/sys/logo_120x61.gif', 'image/gif', 'http://www.spiegel.de/index.rss');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (23, 'Otto.de Updated', 'Otto.de Tech Blog', 'https://www.otto.de/unternehmen/media-oc/img/newsroom/bilder/pressedownload/2017/weblication/wThumbnails/UPDATED_LOGO-e1fd9b6770d725bg274ffe8fbc40d0f3.JPG', 'image/jpg', 'https://updated.de/feed/rss');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (24, 'taz.de', 'Aktuelle Nachrichten - Netzkultur', 'http://www.taz.de/fileadmin/templates/neu/images/logo_tazde_rss_2.gif', 'image/gif', 'http://www.taz.de/!p4631;rss/');

INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (25, 'scilogs.spektrum.de', 'Tagebücher der Wissenschaft', 'https://scilogs.spektrum.de/wp-content/themes/sdw-theme/assets/img/favicon/scilogs-icon-32.png', 'image/png', 'https://scilogs.spektrum.de/feed/');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (26, 'Motherboard', 'The future is wonderful, the future is terrifying', 'https://vice-web-statics-cdn.vice.com/images/motherboard-og.png', 'image/png', 'https://motherboard.vice.com/de/rss');
INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (27, 'China-Gadgets', 'Die besten Gadgets aus China!', 'https://www.china-gadgets.de/app/plugins/tmx-navigation-menu/assets/logo.svg', 'image/svg', 'https://www.china-gadgets.de/feed/');

INSERT INTO feed(id, name, description, picture, picture_content_type, url)  VALUES (28, 'Jetzt.de', 'Was junge Menschen jetzt bewegt: Aktuelles mit Tiefe - aus Gesellschaft, Liebe und Sex, Studium und Job, Politik und Popkultur, Musik, TV und Kino.', 'https://www.jetzt.de/images/ms-icon-310x310.png', 'image/png', 'https://www.jetzt.de/alle_artikel.rss');
/* https://www.nzz.ch/startseite.rss */

/* USER FEEDS ZUORDNUNGEN */
INSERT INTO eilkurier_user_feed(id, eilkurier_user_id, feed_id, sortindex) VALUES (1, 3, 1, 1);
INSERT INTO eilkurier_user_feed(id, eilkurier_user_id, feed_id, sortindex) VALUES (2, 3, 3, 2);
INSERT INTO eilkurier_user_feed(id, eilkurier_user_id, feed_id, sortindex) VALUES (3, 3, 13, 3);

/* CATEGORIES UND FEED ZU CATEGORY ZUORDNUNGEN */
INSERT INTO category(id, name, description) VALUES (1, 'IT, Hardware, Software','Nachrichten- und Artikelquellen über die digitale Welt.');
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 1);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 2);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 3);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 4);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 5);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 6);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 7);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 8);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 12);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 9);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 23);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 24);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 25);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 26);
INSERT INTO category_feed(category_id, feed_id)  VALUES (1, 27);

INSERT INTO category(id, name, description) VALUES (2, 'DIY, Maker, Heimwerken, Basteln','Anleitungen und Beschreibungen von selbstgebauten Projekten.');
INSERT INTO category_feed(category_id, feed_id)  VALUES (2, 9);
INSERT INTO category_feed(category_id, feed_id)  VALUES (2, 10);
INSERT INTO category_feed(category_id, feed_id)  VALUES (2, 11);
INSERT INTO category_feed(category_id, feed_id)  VALUES (2, 12);

INSERT INTO category(id, name, description) VALUES (3, 'Musik, Band, Instrumente','Nachrichten- und Artikelquellen über das Musizieren.');
INSERT INTO category_feed(category_id, feed_id)  VALUES (3, 13);
INSERT INTO category_feed(category_id, feed_id)  VALUES (3, 14);
INSERT INTO category_feed(category_id, feed_id)  VALUES (3, 15);
INSERT INTO category_feed(category_id, feed_id)  VALUES (3, 16);
INSERT INTO category_feed(category_id, feed_id)  VALUES (3, 17);

INSERT INTO category(id, name, description) VALUES (4, 'Gitarre & Bass','Nachrichten- und Artikelquellen für Gitarristen und Bassisten.');
INSERT INTO category_feed(category_id, feed_id)  VALUES (4, 13);
INSERT INTO category_feed(category_id, feed_id)  VALUES (4, 14);

INSERT INTO category(id, name, description) VALUES (5, 'Keyboard','Nachrichten- und Artikelquellen für Keyboarder.');
INSERT INTO category_feed(category_id, feed_id)  VALUES (5, 15);

INSERT INTO category(id, name, description) VALUES (6, 'Schlagzeug','Nachrichten- und Artikelquellen für Schlagzeuger');
INSERT INTO category_feed(category_id, feed_id)  VALUES (6, 16);

INSERT INTO category(id, name, description) VALUES (7, 'Nachrichten','Schlagzeilen und Neuigkeiten.');
INSERT INTO category_feed(category_id, feed_id)  VALUES (7, 18);
INSERT INTO category_feed(category_id, feed_id)  VALUES (7, 19);
INSERT INTO category_feed(category_id, feed_id)  VALUES (7, 20);
INSERT INTO category_feed(category_id, feed_id)  VALUES (7, 21);
INSERT INTO category_feed(category_id, feed_id)  VALUES (7, 22);
INSERT INTO category_feed(category_id, feed_id)  VALUES (7, 25);

INSERT INTO category(id, name, description) VALUES (8, 'Gadgets','Tools & Gadgets');
INSERT INTO category_feed(category_id, feed_id)  VALUES (8, 27);

INSERT INTO category(id, name, description) VALUES (9, 'Jugend', 'Was junge Menschen jetzt bewegt.');
INSERT INTO category_feed(category_id, feed_id)  VALUES (9, 28);

/* CATEGORIES DEPOT NOT USED ========================================================= */
/* INSERT INTO category VALUES (1, 'Bildung & Gesellschaft','');
INSERT INTO category VALUES (2, 'Ausbildung & Fortbildung','');
INSERT INTO category VALUES (3, 'Beruf & Arbeit ','');
INSERT INTO category VALUES (4, 'Chemie, Physik & Mathematik','');
INSERT INTO category VALUES (5, 'Events & Veranstaltungen ','');
INSERT INTO category VALUES (6, 'Politik & Wirtschaft','');
INSERT INTO category VALUES (7, 'Religion & Glaube','');
INSERT INTO category VALUES (8, 'Studium & Schule','');
INSERT INTO category VALUES (9, 'Umwelt & Natur','');
INSERT INTO category VALUES (10, 'Wissen','');

INSERT INTO category VALUES (11, 'Business','');
INSERT INTO category VALUES (12, 'Bauwirtschaft','');
INSERT INTO category VALUES (13, 'Beruf','');
INSERT INTO category VALUES (14, 'Firmen','');
INSERT INTO category VALUES (15, 'Kleinanzeigen','');
INSERT INTO category VALUES (16, 'Landwirtschaft','');
INSERT INTO category VALUES (17, 'Management','');
INSERT INTO category VALUES (18, 'Produkte','');
INSERT INTO category VALUES (19, 'Shops','');
INSERT INTO category VALUES (20, 'Stellenanzeigen','');
INSERT INTO category VALUES (21, 'Wirtschaft','');

INSERT INTO category VALUES (22, 'Communities','');
INSERT INTO category VALUES (23, 'Bildung & Beruf','');
INSERT INTO category VALUES (24, 'Familie','');
INSERT INTO category VALUES (25, 'Finanzen','');
INSERT INTO category VALUES (26, 'Flirt & Chat & Dating','');
INSERT INTO category VALUES (27, 'Politik','');
INSERT INTO category VALUES (28, 'Reisen & Länder','');
INSERT INTO category VALUES (29, 'Spiele & Games','');
INSERT INTO category VALUES (30, 'Sport','');
INSERT INTO category VALUES (31, 'Studium','');
INSERT INTO category VALUES (32, 'Softwareentwicklung','');

INSERT INTO category VALUES (33, 'Computer','');
INSERT INTO category VALUES (34, 'Audio & Foto','');
INSERT INTO category VALUES (36, 'Elektronik & Technik','');
INSERT INTO category VALUES (37, 'Haushaltsgeräte','');
INSERT INTO category VALUES (38, 'Heimwerker','');
INSERT INTO category VALUES (39, 'Internet','');
INSERT INTO category VALUES (40, 'Administration','');
INSERT INTO category VALUES (41, 'Software','');
INSERT INTO category VALUES (42, 'Telekommunikation','');
INSERT INTO category VALUES (43, 'TV, Video','');

INSERT INTO category VALUES (44, 'Fahrzeuge & Motor','');
INSERT INTO category VALUES (45, 'Anhänger & Garagen','');
INSERT INTO category VALUES (46, 'Flugzeuge & Helikopter','');
INSERT INTO category VALUES (47, 'Gesetz & Umwelt','');
INSERT INTO category VALUES (48, 'Kaufen, Verkaufen & Mieten','');
INSERT INTO category VALUES (49, 'Nutzfahrzeuge','');
INSERT INTO category VALUES (50, 'Reparatur','');
INSERT INTO category VALUES (51, 'Schiffe & Boote','');
INSERT INTO category VALUES (52, 'Tuning, Ersatzteile & Zubehör','');
INSERT INTO category VALUES (53, 'Zweiräder','');
INSERT INTO category VALUES (54, 'Familie & Erziehung','');

INSERT INTO category VALUES (55, 'Familie & Erziehung','');
INSERT INTO category VALUES (56, 'Babys & Kleinkinder','');
INSERT INTO category VALUES (57, 'Besondere Anlässe','');
INSERT INTO category VALUES (58, 'Erziehung & Recht','');
INSERT INTO category VALUES (59, 'Haushalt','');
INSERT INTO category VALUES (60, 'Kinder & Jugendliche','');
INSERT INTO category VALUES (61, 'Kleidung','');

INSERT INTO category VALUES (62, 'Freizeit, Unterhaltung & Bekleidung','');
INSERT INTO category VALUES (64, 'Kleidung & Accessoires','');
INSERT INTO category VALUES (66, 'Kultur & Kunst','');
INSERT INTO category VALUES (67, 'Lesen & Schreiben','');
INSERT INTO category VALUES (68, 'Musik & Film','');
INSERT INTO category VALUES (69, 'Partys & Events','');
INSERT INTO category VALUES (70, 'Sammeln','');
INSERT INTO category VALUES (71, 'Sport','');
INSERT INTO category VALUES (72, 'Unterhaltung','');
INSERT INTO category VALUES (73, 'Veranstaltungen','');
INSERT INTO category VALUES (74, 'VIPs','');

INSERT INTO category VALUES (75, 'Games & Spiele','');
INSERT INTO category VALUES (76, 'Gewinnspiele','');
INSERT INTO category VALUES (77, 'Gilden','');
INSERT INTO category VALUES (78, 'Handhelds & Konsole','');
INSERT INTO category VALUES (79, 'Informationen','');
INSERT INTO category VALUES (80, 'Onlinegames','');
INSERT INTO category VALUES (81, 'PC-Spiele','');

INSERT INTO category VALUES (82, 'Geld & Versicherung','');
INSERT INTO category VALUES (83, 'Anlagen & Zinsen','');
INSERT INTO category VALUES (84, 'Bank & Währung','');
INSERT INTO category VALUES (85, 'Börse','');
INSERT INTO category VALUES (86, 'Finanzen','');
INSERT INTO category VALUES (87, 'Kredite & Schulden','');
INSERT INTO category VALUES (88, 'Steuern','');
INSERT INTO category VALUES (89, 'Versicherung','');

INSERT INTO category VALUES (90, 'Gesundheit & Körper','');
INSERT INTO category VALUES (91, 'Beauty & Kosmetik','');
INSERT INTO category VALUES (92, 'Beschwerden & Leiden','');
INSERT INTO category VALUES (93, 'Diät & Abnehmen','');
INSERT INTO category VALUES (94, 'Esoterik','');
INSERT INTO category VALUES (95, 'Essen & Trinken','');
INSERT INTO category VALUES (96, 'Wellness','');

INSERT INTO category VALUES (97, 'Immobilien & Wohnen','');
INSERT INTO category VALUES (99, 'Energie','');
INSERT INTO category VALUES (100, 'Garten','');
INSERT INTO category VALUES (101, 'Haustiere','');
INSERT INTO category VALUES (102, 'Mieten, Kaufen & Verkaufen','');
INSERT INTO category VALUES (103, 'Möbel, Einrichtung & Zubehör','');
INSERT INTO category VALUES (104, 'Recht & Beistand','');

INSERT INTO category VALUES (105, 'Kontakte, Liebe & Erotik','');
INSERT INTO category VALUES (106, 'Erotik & Abenteuer','');
INSERT INTO category VALUES (108, 'Kontaktanzeigen','');
INSERT INTO category VALUES (109, 'Liebe & Kummer','');
INSERT INTO category VALUES (110, 'Verhütung & Hilfe','');

INSERT INTO category VALUES (111, 'Nachrichten','');
INSERT INTO category VALUES (112, 'Aktuelles','');
INSERT INTO category VALUES (113, 'Ausland','');

INSERT INTO category VALUES (115, 'Pressemitteilungen','');
INSERT INTO category VALUES (116, 'Regional','');
INSERT INTO category VALUES (117, 'Sportnachrichten','');
INSERT INTO category VALUES (118, 'Weltnachrichten','');

INSERT INTO category VALUES (119, 'Podcasts','');
INSERT INTO category VALUES (120, 'Allgemeines','');
INSERT INTO category VALUES (121, 'Comedy & Satire','');
INSERT INTO category VALUES (122, 'Kultur','');
INSERT INTO category VALUES (123, 'Literatur','');
INSERT INTO category VALUES (125, 'Nachrichten','');
INSERT INTO category VALUES (126, 'Sport','');
INSERT INTO category VALUES (127, 'Videopodcast','');

INSERT INTO category VALUES (128, 'Reise & Urlaub','');
INSERT INTO category VALUES (129, 'Aktivurlaub','');
INSERT INTO category VALUES (130, 'Hinweise & Empfehlungen','');
INSERT INTO category VALUES (131, 'Hotels & Unterkünfte','');
INSERT INTO category VALUES (132, 'Last Minute & Fliegen','');
INSERT INTO category VALUES (133, 'Spartenurlaub','');
INSERT INTO category VALUES (134, 'Städte & Länder','');
INSERT INTO category VALUES (135, 'Weltreise','');

INSERT INTO category VALUES (136, 'Sparen & Vergleichen','');
INSERT INTO category VALUES (137, 'Angebote & Gutscheine','');
INSERT INTO category VALUES (138, 'Tarifevergleich','');

INSERT INTO category VALUES (139, 'Webwork','');
INSERT INTO category VALUES (140, 'Spring','');
INSERT INTO category VALUES (141, 'Java','');
INSERT INTO category VALUES (142, 'Node.js','');
INSERT INTO category VALUES (143, 'CSS','');
INSERT INTO category VALUES (144, 'PHP','');
INSERT INTO category VALUES (145, 'RSS und Co.','');*/
