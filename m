Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D47231C9F
	for <keys@linux.kernel.org>; Tue,  5 Aug 2025 07:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754380782; cv=none; b=b4VnUOGZ+F+J0Du/R+T0VKWmH2BFew5/zlwWtl/JO7dVOOq4sFoOVrS2Ybpl4R2VB6+2GalwPzhGBKZc9TTJCh+04IqFQZQTqQIQonHUdadPduyCuQRXueB36NaQyFr+SwKmPwlWsCbA3I7wSKL3msW6Chr95noIPAT/qXHYltw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754380782; c=relaxed/simple;
	bh=xExKrVIgSJy7U5KB4R+JlqUQVyNc3hhaLHzXPtehKjw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VGZSBVGTwVejLpoxMVSfVnsdiIxXJvg/kXnY7IUtbUbK4RsMyVrASZBJ4iDLgqZHhYfpuQTQIPLb1cxepFp/myQYYIOYetlDN+3yD9hdbIJVeNgE4WPXkAyTN9E+3e8GUMgahKaUYRH2UfIp5f1c6Kj3umqwCSLKmV8M8o0dFkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=VuqlVboR; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="VuqlVboR"
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ae9c2754a00so1280282666b.2
        for <keys@linux.kernel.org>; Tue, 05 Aug 2025 00:59:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754380778; x=1754985578; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AQECX8aiIc4AccvxGxaHfxq3JFoetfWoqAOvbkKgdb8=;
        b=VuqlVboRsqAq1RM9J2+7WIU077pIi36+JfkYjD8bkPwo+ZrWBlGIEyVSBEUFtDM8n1
         fe9SCeZ4TGsjiRgQnFJ/uZWtvqx/0u+H8KG5kk+v4FicUCYwB6TAPNtAtFDU2tePj+5n
         cJCC1Rrb83kGgSelKEfoN8j7lIuhh7zsXZg0bElwPWDmO28kLqS0cA7GTv4CrbDBuVnv
         aOB5+2309iY+bf20xr9pKRYTdLWGW2KkHeZZ9xu2XUBiAbeXxIJ7s8rKP0pNEV1KNmv2
         L8qD+E9tVG2fj8U87YGI+PUXTnE5x8O1YBirQ7xGX4iP97BXjPN4w5Jjl7YS9F3wdhpf
         gudQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754380778; x=1754985578;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AQECX8aiIc4AccvxGxaHfxq3JFoetfWoqAOvbkKgdb8=;
        b=qC8CxM3qysYR2mjw5gobFHY47HgRd9X8dDf3EQKildFhvE8k48WS8BGDEE/Fzav0GF
         A/TL+ugD7X+LirIGqNVkkKsMR0IwIt5846+1v8o339MRJpWc764xp1m69mA16y0prHVX
         gSPi7lqqsWcslS1czhx4D7iVny1B+8e6959IEqXViaXcgxaehGXAdURxhWkDq/KV4PLN
         XljzTwR2fGeIrnGhIIG4BWzlEe/oos8YL4KLoFzAspEWdG0vQJ87uDxvzEZl4mQaS5No
         iMTwUvx1hkjO3joLQzkJvhsOUq5MkL9kBDe7zzKdjtuXuzKjEVgy+ordHFe3Wi8iCPW1
         Ktag==
X-Gm-Message-State: AOJu0YwJvxfZoRDZ0xF3w01CgoIS99YmOHDyPf+W4hAAavQbPW30uR8T
	jA8a2ABP25hktuErKWXcPqvyEKDESxglT/T/LFqzxfkE1971FwOIjQTZfbjEHbPyPSUT/kUBPK/
	OZpNM
X-Gm-Gg: ASbGncsaKp2DSum0NWhLm47Mb/dHzh+PTdjgyN+Hw0cBaMDAuAnakpiPbToPpKYFxKu
	ckCkb7FAcJXXFQbhUoNPnE1bQ4MdZ9sNgeyeFfvcIgDHXu+1reAcizkeMZ69ZxXblRZcS+Rse0o
	y+b38re7JZosNHl/zm8sLdcF2yc+12N34DXvrxqgUrjdWncwRjXMuljfoy0PpDOtmZavsKEGjEk
	Cz2q3F9PuNYaVv3jGNkW+TKOxqRnwCBy/Yfo7Zyxvkb6H/Hrxo2HkSZLJDEezxJK/6m7R1RjN85
	WgyqZ8IwGW3IG/VEofAUa9xUxr8PZVHWIN34ETCoN/+AnblwU31NDPNCH0wYmG2pexIvEhcwBG4
	J2ogKduC/ELD9K22mwRdLfMh8bdLkfWpnr11row==
X-Google-Smtp-Source: AGHT+IFao28+Wmc6AoKObOg5OKQyojcLVmaF/VL3LXz5DICityGR5pYiYPkf5CAxY+zomv44LF6GVQ==
X-Received: by 2002:a17:907:970a:b0:af9:353d:e69a with SMTP id a640c23a62f3a-af9400097f7mr1108801966b.21.1754380778337;
        Tue, 05 Aug 2025 00:59:38 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-af91a0771basm852505866b.29.2025.08.05.00.59.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 00:59:37 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Cc: Allison Henderson <allison.henderson@oracle.com>
Subject: [PATCH 5/7] Remove expired key of Allison Henderson
Date: Tue,  5 Aug 2025 09:59:06 +0200
Message-ID: <c5d6be64909b0d5209cdca35265c40b4ca2d5738.1754379198.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
References: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=15804; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=xExKrVIgSJy7U5KB4R+JlqUQVyNc3hhaLHzXPtehKjw=; b=kA0DAAoBj4D7WH0S/k4ByyZiAGiRudKj7jTdjunlzbRNB2I4xkZVVck5LhJOcygIjde3LK77L YkBMwQAAQoAHRYhBD+BrGk6eh5Zia3+04+A+1h9Ev5OBQJokbnSAAoJEI+A+1h9Ev5OjGYH/jgH iUzsAJodCzXFzLGaRmJ/rbZZmJCxnUB6z5o2Gn0Zgrmh5kVhHZHnRDY/ihtBMp/I5e6y2VfCDZv otidh0kanemSxKrGwLTrJkoS+Zw+R5CrCbwoMrsTi1Fx03lnGTBE1zh5s5lS2hQSNbiZ+MvMtMv b9oNSQ8l34qqhXCxuS1xOpL1Dx/yqw5nsCHEi6rTJhIrwNoqrSTvgtFipgEEwUImzAgeBhc89zi ifm2SFxF8ydRSgdxMEO+mldMFbQ/Z42NXuIBp3/zBLLGjbJfXySTlxdiJ/haH6qkBC+WOWQZZ3F OiV/syCRbGf3BKEwwW9H/v7GSraK9XTQqEyX06g=
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The key expired in September 2024.
---
 graphs/C83EA4603047E9B3.svg | 136 ------------------------------------
 keys/C83EA4603047E9B3.asc   |  71 -------------------
 2 files changed, 207 deletions(-)
 delete mode 100644 graphs/C83EA4603047E9B3.svg
 delete mode 100644 keys/C83EA4603047E9B3.asc

diff --git a/graphs/C83EA4603047E9B3.svg b/graphs/C83EA4603047E9B3.svg
deleted file mode 100644
index 86aa3ed41d63..000000000000
--- a/graphs/C83EA4603047E9B3.svg
+++ /dev/null
@@ -1,136 +0,0 @@
-<?xml version="1.0" encoding="UTF-8" standalone="no"?>
-<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
- "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
-<!-- Generated by graphviz version 9.0.0 (20230911.1827)
- -->
-<!-- Title: G Pages: 1 -->
-<svg width="384pt" height="456pt"
- viewBox="0.00 0.00 384.38 455.50" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
-<g id="graph0" class="graph" transform="scale(1 1) rotate(0) translate(4 451.5)">
-<title>G</title>
-<polygon fill="white" stroke="none" points="-4,4 -4,-451.5 380.38,-451.5 380.38,4 -4,4"/>
-<g id="clust1" class="cluster">
-<title>cluster_toplevel</title>
-<polygon fill="none" stroke="white" points="92.25,-366 92.25,-439.5 284.25,-439.5 284.25,-366 92.25,-366"/>
-</g>
-<!-- a_112 -->
-<g id="node1" class="node">
-<title>a_112</title>
-<path fill="none" stroke="gray" d="M12,-281C12,-281 168.5,-281 168.5,-281 174.5,-281 180.5,-287 180.5,-293 180.5,-293 180.5,-325.5 180.5,-325.5 180.5,-331.5 174.5,-337.5 168.5,-337.5 168.5,-337.5 12,-337.5 12,-337.5 6,-337.5 0,-331.5 0,-325.5 0,-325.5 0,-293 0,-293 0,-287 6,-281 12,-281"/>
-<text text-anchor="middle" x="90.25" y="-323.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">John Hawley</text>
-<text text-anchor="middle" x="90.25" y="-309.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">eaglescrag.net</text>
-<polyline fill="none" stroke="gray" points="0,-302.5 180.5,-302.5"/>
-<text text-anchor="middle" x="31.25" y="-288.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="62.5,-281 62.5,-302.5"/>
-<text text-anchor="middle" x="121.5" y="-288.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">2EA76B9C2B466D9D</text>
-</g>
-<!-- a_519 -->
-<g id="node3" class="node">
-<title>a_519</title>
-<path fill="none" stroke="gray" d="M13.75,-187.5C13.75,-187.5 168.75,-187.5 168.75,-187.5 174.75,-187.5 180.75,-193.5 180.75,-199.5 180.75,-199.5 180.75,-232 180.75,-232 180.75,-238 174.75,-244 168.75,-244 168.75,-244 13.75,-244 13.75,-244 7.75,-244 1.75,-238 1.75,-232 1.75,-232 1.75,-199.5 1.75,-199.5 1.75,-193.5 7.75,-187.5 13.75,-187.5"/>
-<text text-anchor="middle" x="91.25" y="-229.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Martin K. Petersen</text>
-<text text-anchor="middle" x="91.25" y="-216.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">mkp.net</text>
-<polyline fill="none" stroke="gray" points="1.75,-209 180.75,-209"/>
-<text text-anchor="middle" x="33" y="-194.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="64.25,-187.5 64.25,-209"/>
-<text text-anchor="middle" x="122.5" y="-194.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">EEE9601A75C5DE3D</text>
-</g>
-<!-- a_112&#45;&gt;a_519 -->
-<g id="edge2" class="edge">
-<title>a_112&#45;&gt;a_519</title>
-<path fill="none" stroke="black" d="M90.55,-280.8C90.64,-273 90.73,-264.35 90.82,-255.99"/>
-<polygon fill="black" stroke="black" points="94.32,-256.05 90.93,-246.01 87.32,-255.97 94.32,-256.05"/>
-</g>
-<!-- a_277 -->
-<g id="node2" class="node">
-<title>a_277</title>
-<path fill="none" stroke="gray" d="M112.62,-374.5C112.62,-374.5 263.88,-374.5 263.88,-374.5 269.88,-374.5 275.88,-380.5 275.88,-386.5 275.88,-386.5 275.88,-419 275.88,-419 275.88,-425 269.88,-431 263.88,-431 263.88,-431 112.62,-431 112.62,-431 106.62,-431 100.62,-425 100.62,-419 100.62,-419 100.62,-386.5 100.62,-386.5 100.62,-380.5 106.62,-374.5 112.62,-374.5"/>
-<text text-anchor="middle" x="188.25" y="-416.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Linus Torvalds</text>
-<text text-anchor="middle" x="188.25" y="-403.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">kernel.org</text>
-<polyline fill="none" stroke="gray" points="100.62,-396 275.88,-396"/>
-<text text-anchor="middle" x="131.88" y="-381.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 2048</text>
-<polyline fill="none" stroke="gray" points="163.12,-374.5 163.12,-396"/>
-<text text-anchor="middle" x="219.5" y="-381.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">79BE3E4300411886</text>
-</g>
-<!-- a_277&#45;&gt;a_112 -->
-<g id="edge1" class="edge">
-<title>a_277&#45;&gt;a_112</title>
-<path fill="none" stroke="black" d="M158.58,-374.05C148.99,-365.09 138.21,-355.03 128.11,-345.6"/>
-<polygon fill="black" stroke="black" points="130.62,-343.16 120.92,-338.89 125.85,-348.27 130.62,-343.16"/>
-</g>
-<!-- a_348 -->
-<g id="node5" class="node">
-<title>a_348</title>
-<path fill="none" stroke="gray" d="M210.12,-281C210.12,-281 364.38,-281 364.38,-281 370.38,-281 376.38,-287 376.38,-293 376.38,-293 376.38,-325.5 376.38,-325.5 376.38,-331.5 370.38,-337.5 364.38,-337.5 364.38,-337.5 210.12,-337.5 210.12,-337.5 204.12,-337.5 198.12,-331.5 198.12,-325.5 198.12,-325.5 198.12,-293 198.12,-293 198.12,-287 204.12,-281 210.12,-281"/>
-<text text-anchor="middle" x="287.25" y="-323.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">John W. Linville</text>
-<text text-anchor="middle" x="287.25" y="-309.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">tuxdriver.com</text>
-<polyline fill="none" stroke="gray" points="198.12,-302.5 376.38,-302.5"/>
-<text text-anchor="middle" x="229.38" y="-288.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="260.62,-281 260.62,-302.5"/>
-<text text-anchor="middle" x="318.5" y="-288.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">972D5BF4DC613806</text>
-</g>
-<!-- a_277&#45;&gt;a_348 -->
-<g id="edge4" class="edge">
-<title>a_277&#45;&gt;a_348</title>
-<path fill="none" stroke="black" d="M218.22,-374.05C227.91,-365.09 238.8,-355.03 249,-345.6"/>
-<polygon fill="black" stroke="black" points="251.3,-348.24 256.27,-338.88 246.55,-343.1 251.3,-348.24"/>
-</g>
-<!-- a_558 -->
-<g id="node4" class="node">
-<title>a_558</title>
-<path fill="none" stroke="gray" d="M111.88,-0.5C111.88,-0.5 264.62,-0.5 264.62,-0.5 270.62,-0.5 276.62,-6.5 276.62,-12.5 276.62,-12.5 276.62,-45 276.62,-45 276.62,-51 270.62,-57 264.62,-57 264.62,-57 111.88,-57 111.88,-57 105.88,-57 99.88,-51 99.88,-45 99.88,-45 99.88,-12.5 99.88,-12.5 99.88,-6.5 105.88,-0.5 111.88,-0.5"/>
-<text text-anchor="middle" x="188.25" y="-42.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Allison Henderson</text>
-<text text-anchor="middle" x="188.25" y="-29.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">oracle.com</text>
-<polyline fill="none" stroke="gray" points="99.88,-22 276.62,-22"/>
-<text text-anchor="middle" x="131.12" y="-7.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 3072</text>
-<polyline fill="none" stroke="gray" points="162.38,-0.5 162.38,-22"/>
-<text text-anchor="middle" x="219.5" y="-7.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">C83EA4603047E9B3</text>
-</g>
-<!-- a_519&#45;&gt;a_558 -->
-<g id="edge3" class="edge">
-<title>a_519&#45;&gt;a_558</title>
-<path fill="none" stroke="black" d="M105.77,-187.05C122.46,-155.22 149.95,-102.8 168.55,-67.31"/>
-<polygon fill="black" stroke="black" points="171.54,-69.16 173.08,-58.67 165.34,-65.9 171.54,-69.16"/>
-</g>
-<!-- a_1 -->
-<g id="node6" class="node">
-<title>a_1</title>
-<path fill="none" stroke="gray" d="M211,-187.5C211,-187.5 361.5,-187.5 361.5,-187.5 367.5,-187.5 373.5,-193.5 373.5,-199.5 373.5,-199.5 373.5,-232 373.5,-232 373.5,-238 367.5,-244 361.5,-244 361.5,-244 211,-244 211,-244 205,-244 199,-238 199,-232 199,-232 199,-199.5 199,-199.5 199,-193.5 205,-187.5 211,-187.5"/>
-<text text-anchor="middle" x="286.25" y="-229.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Jeff Layton</text>
-<text text-anchor="middle" x="286.25" y="-216.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">poochiereds.net</text>
-<polyline fill="none" stroke="gray" points="199,-209 373.5,-209"/>
-<text text-anchor="middle" x="230.25" y="-194.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="261.5,-187.5 261.5,-209"/>
-<text text-anchor="middle" x="317.5" y="-194.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">000E684119568215</text>
-</g>
-<!-- a_348&#45;&gt;a_1 -->
-<g id="edge5" class="edge">
-<title>a_348&#45;&gt;a_1</title>
-<path fill="none" stroke="black" d="M286.95,-280.8C286.86,-273 286.77,-264.35 286.68,-255.99"/>
-<polygon fill="black" stroke="black" points="290.18,-255.97 286.57,-246.01 283.18,-256.05 290.18,-255.97"/>
-</g>
-<!-- a_122 -->
-<g id="node7" class="node">
-<title>a_122</title>
-<path fill="none" stroke="gray" d="M191,-94C191,-94 341.5,-94 341.5,-94 347.5,-94 353.5,-100 353.5,-106 353.5,-106 353.5,-138.5 353.5,-138.5 353.5,-144.5 347.5,-150.5 341.5,-150.5 341.5,-150.5 191,-150.5 191,-150.5 185,-150.5 179,-144.5 179,-138.5 179,-138.5 179,-106 179,-106 179,-100 185,-94 191,-94"/>
-<text text-anchor="middle" x="266.25" y="-136.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Charles E. Lever III</text>
-<text text-anchor="middle" x="266.25" y="-122.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">oracle.com</text>
-<polyline fill="none" stroke="gray" points="179,-115.5 353.5,-115.5"/>
-<text text-anchor="middle" x="210.25" y="-101.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="241.5,-94 241.5,-115.5"/>
-<text text-anchor="middle" x="297.5" y="-101.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">336AB3336F667F97</text>
-</g>
-<!-- a_1&#45;&gt;a_122 -->
-<g id="edge6" class="edge">
-<title>a_1&#45;&gt;a_122</title>
-<path fill="none" stroke="black" d="M280.25,-187.3C278.52,-179.41 276.61,-170.65 274.76,-162.21"/>
-<polygon fill="black" stroke="black" points="278.19,-161.5 272.64,-152.48 271.35,-163 278.19,-161.5"/>
-</g>
-<!-- a_122&#45;&gt;a_558 -->
-<g id="edge7" class="edge">
-<title>a_122&#45;&gt;a_558</title>
-<path fill="none" stroke="black" d="M242.85,-93.8C235.43,-85.1 227.12,-75.35 219.26,-66.13"/>
-<polygon fill="black" stroke="black" points="222.04,-63.99 212.89,-58.65 216.71,-68.53 222.04,-63.99"/>
-</g>
-</g>
-</svg>
diff --git a/keys/C83EA4603047E9B3.asc b/keys/C83EA4603047E9B3.asc
deleted file mode 100644
index de0fda99f1b9..000000000000
--- a/keys/C83EA4603047E9B3.asc
+++ /dev/null
@@ -1,71 +0,0 @@
-pub   rsa3072 2022-09-21 [SC] [expires: 2024-09-20]
-      95F9F3CE490FD1CC2C72177AC83EA4603047E9B3
-uid                      Allison Henderson <allison.henderson@oracle.com>
-sub   rsa3072 2022-09-21 [E] [expires: 2024-09-20]
-      A0A9145A96D34BB5E77FF3CDE64B3ACF59B5CCBB
-
------BEGIN PGP PUBLIC KEY BLOCK-----
-
-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
-QLMcRmWfkmN8nxRh13Chz7DhiV8=
-=Fb0S
------END PGP PUBLIC KEY BLOCK-----
-- 
2.50.1

