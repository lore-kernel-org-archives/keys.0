Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E491EDA1B
	for <keys@linux.kernel.org>; Tue,  5 Aug 2025 07:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754380778; cv=none; b=igC0wAc3OTjg8yLJK2c4b2kYwZYYUPx+rVQXnrGNEBxe/DhLS/Z8QZZIDOnOi01MpomQgJsMVTmooy//ltNjRbcaFyFswEcYqVdc4oHBp1Q9c6WMRbFiwduVvSSf8ac00eSxuCwAxx1EtXzjDb+AW8IPLKip4WOY0ha2Ot8QCUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754380778; c=relaxed/simple;
	bh=jCLq8EqZi5SF/4R/47snettIMmAQvWxZsdWKrXZVNV8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Xx99n9bnMMDb+GsTfLo4pnQ8N0pZpgD58Fgo/yUvUhC+XL4fpLiG3E/hISPAGoigsHUvMsL4NihsQd2QYMJvrK5BE+NEOmzBruiVy2meyPDaf8bogkikE6cRjzsnA6pV/WXZekwXlIWNKkzsIu2dF9cvhhSsHIwReOijeePm8LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=i5h/XOpa; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="i5h/XOpa"
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-af9618282a5so447951866b.2
        for <keys@linux.kernel.org>; Tue, 05 Aug 2025 00:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754380773; x=1754985573; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F6Sf2y2q1+JSEi08F2OOIykDNR4qXTtCIbGCrVf7JYk=;
        b=i5h/XOpadI59y6/AamaOpcZv8UvRUo3jPXGQkkTvorRB6VlsWZVeWuRVHgUuOpuqgQ
         KQE7y86eqcAB65Iqxg1aX2P7Dd5SQzS+3fvIK4tRonwkySNQ3NWMaDkYkqc4Oq+njEcz
         K33wZPGC0XTaFIPDrWZWiuEfrfroruHzkg5iL5/h36uDgtyZXg3WwK1pGrksXl1Pn/AH
         xpkyT9mIO7u+jdPssJjNXPMw3+eL/ljDG7CcZUILhwVHG6qDjnphCdL53w0R8frtl5Me
         +0ZfRuZC3nb62FePaQzIaMio/dEih6zyS6+zQYbO7ejLa6LfqCHdf4/SVJZwLtWy7/4P
         gp9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754380773; x=1754985573;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F6Sf2y2q1+JSEi08F2OOIykDNR4qXTtCIbGCrVf7JYk=;
        b=uoEmfLLVovbI2tKKrsV5FmxRWgoRC/2wgeiopkYlkXLHkiGb+kl5LATMyn72LVWWrP
         61FyshXJa0usU1V7oRPyYXehZ3/L+h9Jz70oTuJJY2id0jIc3yqiv0DbaRCqnx9ASTsn
         ZdAzZ+td7VyV3YaCFLB+S9XpgdHxW8gExo6IdmBskC7iinGfIvhihv33U51Lj5xozF7l
         tMDJxlQCf3yJPUtaOgFmzqKdrRCQqVroSy/VbbLFvo8mi4/AL/FeusvWYI1RNIP+hfi8
         6mFGfwoCFNv9saOEQSAtfL/JQUWTTYFcvDYHxClpqPJK7PsAuS6tqEozD8Z7Qa/5LCub
         ppWA==
X-Gm-Message-State: AOJu0YwSIKR3YfNijAyVOGGL2zD4Sr7AuqvlzvW3802NJcap+xjRFUNv
	dISoXh7I894QUpsn+5v0CuVBng8U3OVAxHEtT7S0sz1sUTo74nMYjJYWuIigv69lKMwYJz32zAR
	9udcQ
X-Gm-Gg: ASbGncu8AYBBl1IoxUHFied015WCrhl2yR/PXfXpmoHT5SZqrwfdf+7ZodmYCewALvb
	V73jXwy/OPYNbAp6ezEwSqiyvyp0sz+jB59Ys54AOp47LOPcHsCYbXPnAHXtxF53FYdNs57u4CK
	g/t6vG5gfVWFuKrE+iuc0YZbAgyyfNRPxFZyELTRGJWc/bN0ZmBmBfeeopKODr4hc6+FGTwPzdf
	47WJUuOn2VfFMo0/4nQg+9iMDcIuApJnrvjROgC+K+YGRdpx8Fr94zfy1SOwWTHUivVplspzooT
	8Du6o/qZm8zwexHVjvg7TVNp3SIi++7pg6uwB41HKf4LcNpa++PkS8/4Zyloz7YwtGUkskC//Zi
	T6R34rJryH7bU4Yjp5Adx6DrG9XwwteIK3wMmOw==
X-Google-Smtp-Source: AGHT+IFwWPbV8S7MoUJv54CVFvDIGul7JaU0rr8e9BBPPnYn6Of9vOK+qofroRWaHU9CQXWi4UEplA==
X-Received: by 2002:a17:907:9628:b0:ae0:be38:64bf with SMTP id a640c23a62f3a-af940282199mr1094727966b.58.1754380773158;
        Tue, 05 Aug 2025 00:59:33 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-af91a0a3bd2sm861557166b.54.2025.08.05.00.59.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 00:59:32 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Cc: Imre Kaloz <kaloz@dune.hu>,
	Imre Kaloz <kaloz@openwrt.org>
Subject: [PATCH 2/7] Remove expired key of Imre Kaloz
Date: Tue,  5 Aug 2025 09:59:03 +0200
Message-ID: <6aaf5e003588ff2858329bca6134ec8980bbf822.1754379198.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
References: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=19942; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=jCLq8EqZi5SF/4R/47snettIMmAQvWxZsdWKrXZVNV8=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBokbnK//PEHP+87vhN4b8WepRglR7QHlqo77JGK fV8XskqTGmJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaJG5ygAKCRCPgPtYfRL+ Tog0B/4+3mgX6B642Gqj7Pbdjp7uxteDSQgL2s3bjY1FeGLOYj1RHeVCy1nPwg2e5UKms0LumZx bsWFHzpqT0x4OeHkHZMnO1iiKDchyLLQ6u9bSXbNJkTbCNX5Y5J6JVyG9tfOY0aPnQQFrFA3n10 IyNUEee6QMOwGb92zoDA2fwuRbxpGFtHd7qxt+mU/3bZc7qFpGOb/aFKAgYb4memNipxVz8h0by QoNHH0IwNd9dFgxQSbCXJ5rosLxXRWwewWFCkP/Fh3pWG26lNSEjlSpeaF2x2pWwpGjsUfReu9+ +wSbhBfHKg50etRuBTkx8SGIOh02yIcqC25UZOSilx38qSuV
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The key expired in July 2024.
---
 graphs/2BE25AAE87E87347.svg | 136 ------------------------------------
 keys/2BE25AAE87E87347.asc   | 136 ------------------------------------
 2 files changed, 272 deletions(-)
 delete mode 100644 graphs/2BE25AAE87E87347.svg
 delete mode 100644 keys/2BE25AAE87E87347.asc

diff --git a/graphs/2BE25AAE87E87347.svg b/graphs/2BE25AAE87E87347.svg
deleted file mode 100644
index f5b8c3a3f4ee..000000000000
--- a/graphs/2BE25AAE87E87347.svg
+++ /dev/null
@@ -1,136 +0,0 @@
-<?xml version="1.0" encoding="UTF-8" standalone="no"?>
-<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
- "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
-<!-- Generated by graphviz version 5.0.0 (0)
- -->
-<!-- Title: G Pages: 1 -->
-<svg width="389pt" height="433pt"
- viewBox="0.00 0.00 389.00 433.00" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
-<g id="graph0" class="graph" transform="scale(1 1) rotate(0) translate(4 429)">
-<title>G</title>
-<polygon fill="white" stroke="transparent" points="-4,4 -4,-429 385,-429 385,4 -4,4"/>
-<g id="clust1" class="cluster">
-<title>cluster_toplevel</title>
-<polygon fill="none" stroke="white" points="93.5,-348 93.5,-417 285.5,-417 285.5,-348 93.5,-348"/>
-</g>
-<!-- a_116 -->
-<g id="node1" class="node">
-<title>a_116</title>
-<path fill="none" stroke="gray" d="M12,-267.5C12,-267.5 169,-267.5 169,-267.5 175,-267.5 181,-273.5 181,-279.5 181,-279.5 181,-307.5 181,-307.5 181,-313.5 175,-319.5 169,-319.5 169,-319.5 12,-319.5 12,-319.5 6,-319.5 0,-313.5 0,-307.5 0,-307.5 0,-279.5 0,-279.5 0,-273.5 6,-267.5 12,-267.5"/>
-<text text-anchor="middle" x="90.5" y="-306.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Greg Kroah&#45;Hartman</text>
-<text text-anchor="middle" x="90.5" y="-294.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">linuxfoundation.org</text>
-<polyline fill="none" stroke="gray" points="0,-287.5 181,-287.5 "/>
-<text text-anchor="middle" x="31.5" y="-274.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="63,-267.5 63,-287.5 "/>
-<text text-anchor="middle" x="122" y="-274.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">38DBBDC86092693E</text>
-</g>
-<!-- a_127 -->
-<g id="node3" class="node">
-<title>a_127</title>
-<path fill="none" stroke="gray" d="M13,-178.5C13,-178.5 168,-178.5 168,-178.5 174,-178.5 180,-184.5 180,-190.5 180,-190.5 180,-218.5 180,-218.5 180,-224.5 174,-230.5 168,-230.5 168,-230.5 13,-230.5 13,-230.5 7,-230.5 1,-224.5 1,-218.5 1,-218.5 1,-190.5 1,-190.5 1,-184.5 7,-178.5 13,-178.5"/>
-<text text-anchor="middle" x="90.5" y="-217.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Linus Walleij</text>
-<text text-anchor="middle" x="90.5" y="-205.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">linaro.org</text>
-<polyline fill="none" stroke="gray" points="1,-198.5 180,-198.5 "/>
-<text text-anchor="middle" x="32.5" y="-185.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="64,-178.5 64,-198.5 "/>
-<text text-anchor="middle" x="122" y="-185.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">4110B337B0195D73</text>
-</g>
-<!-- a_116&#45;&gt;a_127 -->
-<g id="edge2" class="edge">
-<title>a_116&#45;&gt;a_127</title>
-<path fill="none" stroke="black" d="M90.5,-267.34C90.5,-259.04 90.5,-249.65 90.5,-240.75"/>
-<polygon fill="black" stroke="black" points="94,-240.61 90.5,-230.61 87,-240.61 94,-240.61"/>
-</g>
-<!-- a_248 -->
-<g id="node2" class="node">
-<title>a_248</title>
-<path fill="none" stroke="gray" d="M113.5,-356.5C113.5,-356.5 265.5,-356.5 265.5,-356.5 271.5,-356.5 277.5,-362.5 277.5,-368.5 277.5,-368.5 277.5,-396.5 277.5,-396.5 277.5,-402.5 271.5,-408.5 265.5,-408.5 265.5,-408.5 113.5,-408.5 113.5,-408.5 107.5,-408.5 101.5,-402.5 101.5,-396.5 101.5,-396.5 101.5,-368.5 101.5,-368.5 101.5,-362.5 107.5,-356.5 113.5,-356.5"/>
-<text text-anchor="middle" x="189.5" y="-395.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Linus Torvalds</text>
-<text text-anchor="middle" x="189.5" y="-383.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">kernel.org</text>
-<polyline fill="none" stroke="gray" points="101.5,-376.5 277.5,-376.5 "/>
-<text text-anchor="middle" x="133" y="-363.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 2048</text>
-<polyline fill="none" stroke="gray" points="164.5,-356.5 164.5,-376.5 "/>
-<text text-anchor="middle" x="221" y="-363.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">79BE3E4300411886</text>
-</g>
-<!-- a_248&#45;&gt;a_116 -->
-<g id="edge1" class="edge">
-<title>a_248&#45;&gt;a_116</title>
-<path fill="none" stroke="black" d="M160.87,-356.34C150.19,-346.96 137.94,-336.19 126.68,-326.29"/>
-<polygon fill="black" stroke="black" points="128.89,-323.58 119.07,-319.61 124.27,-328.84 128.89,-323.58"/>
-</g>
-<!-- a_291 -->
-<g id="node5" class="node">
-<title>a_291</title>
-<path fill="none" stroke="gray" d="M211.5,-267.5C211.5,-267.5 367.5,-267.5 367.5,-267.5 373.5,-267.5 379.5,-273.5 379.5,-279.5 379.5,-279.5 379.5,-307.5 379.5,-307.5 379.5,-313.5 373.5,-319.5 367.5,-319.5 367.5,-319.5 211.5,-319.5 211.5,-319.5 205.5,-319.5 199.5,-313.5 199.5,-307.5 199.5,-307.5 199.5,-279.5 199.5,-279.5 199.5,-273.5 205.5,-267.5 211.5,-267.5"/>
-<text text-anchor="middle" x="289.5" y="-306.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Kees Cook</text>
-<text text-anchor="middle" x="289.5" y="-294.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">outflux.net</text>
-<polyline fill="none" stroke="gray" points="199.5,-287.5 379.5,-287.5 "/>
-<text text-anchor="middle" x="231" y="-274.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="262.5,-267.5 262.5,-287.5 "/>
-<text text-anchor="middle" x="321" y="-274.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">8972F4DFDC6DC026</text>
-</g>
-<!-- a_248&#45;&gt;a_291 -->
-<g id="edge4" class="edge">
-<title>a_248&#45;&gt;a_291</title>
-<path fill="none" stroke="black" d="M218.42,-356.34C229.2,-346.96 241.58,-336.19 252.96,-326.29"/>
-<polygon fill="black" stroke="black" points="255.39,-328.81 260.64,-319.61 250.8,-323.53 255.39,-328.81"/>
-</g>
-<!-- a_93 -->
-<g id="node4" class="node">
-<title>a_93</title>
-<path fill="none" stroke="gray" d="M112.5,-0.5C112.5,-0.5 266.5,-0.5 266.5,-0.5 272.5,-0.5 278.5,-6.5 278.5,-12.5 278.5,-12.5 278.5,-40.5 278.5,-40.5 278.5,-46.5 272.5,-52.5 266.5,-52.5 266.5,-52.5 112.5,-52.5 112.5,-52.5 106.5,-52.5 100.5,-46.5 100.5,-40.5 100.5,-40.5 100.5,-12.5 100.5,-12.5 100.5,-6.5 106.5,-0.5 112.5,-0.5"/>
-<text text-anchor="middle" x="189.5" y="-39.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Imre Kaloz</text>
-<text text-anchor="middle" x="189.5" y="-27.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">dune.hu</text>
-<polyline fill="none" stroke="gray" points="100.5,-20.5 278.5,-20.5 "/>
-<text text-anchor="middle" x="132" y="-7.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="163.5,-0.5 163.5,-20.5 "/>
-<text text-anchor="middle" x="221" y="-7.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">2BE25AAE87E87347</text>
-</g>
-<!-- a_127&#45;&gt;a_93 -->
-<g id="edge3" class="edge">
-<title>a_127&#45;&gt;a_93</title>
-<path fill="none" stroke="black" d="M104.68,-178.28C121.89,-147.7 150.96,-96.01 170.2,-61.82"/>
-<polygon fill="black" stroke="black" points="173.49,-63.1 175.34,-52.67 167.39,-59.67 173.49,-63.1"/>
-</g>
-<!-- a_120 -->
-<g id="node6" class="node">
-<title>a_120</title>
-<path fill="none" stroke="gray" d="M210,-178.5C210,-178.5 369,-178.5 369,-178.5 375,-178.5 381,-184.5 381,-190.5 381,-190.5 381,-218.5 381,-218.5 381,-224.5 375,-230.5 369,-230.5 369,-230.5 210,-230.5 210,-230.5 204,-230.5 198,-224.5 198,-218.5 198,-218.5 198,-190.5 198,-190.5 198,-184.5 204,-178.5 210,-178.5"/>
-<text text-anchor="middle" x="289.5" y="-217.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Jesper Dangaard Brouer</text>
-<text text-anchor="middle" x="289.5" y="-205.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">redhat.com</text>
-<polyline fill="none" stroke="gray" points="198,-198.5 381,-198.5 "/>
-<text text-anchor="middle" x="230" y="-185.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">DSA 3072</text>
-<polyline fill="none" stroke="gray" points="262,-178.5 262,-198.5 "/>
-<text text-anchor="middle" x="321.5" y="-185.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">3A554D033B37BCED</text>
-</g>
-<!-- a_291&#45;&gt;a_120 -->
-<g id="edge5" class="edge">
-<title>a_291&#45;&gt;a_120</title>
-<path fill="none" stroke="black" d="M289.5,-267.34C289.5,-259.04 289.5,-249.65 289.5,-240.75"/>
-<polygon fill="black" stroke="black" points="293,-240.61 289.5,-230.61 286,-240.61 293,-240.61"/>
-</g>
-<!-- a_62 -->
-<g id="node7" class="node">
-<title>a_62</title>
-<path fill="none" stroke="gray" d="M191,-89.5C191,-89.5 346,-89.5 346,-89.5 352,-89.5 358,-95.5 358,-101.5 358,-101.5 358,-129.5 358,-129.5 358,-135.5 352,-141.5 346,-141.5 346,-141.5 191,-141.5 191,-141.5 185,-141.5 179,-135.5 179,-129.5 179,-129.5 179,-101.5 179,-101.5 179,-95.5 185,-89.5 191,-89.5"/>
-<text text-anchor="middle" x="268.5" y="-128.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Lorenzo Bianconi</text>
-<text text-anchor="middle" x="268.5" y="-116.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">redhat.com</text>
-<polyline fill="none" stroke="gray" points="179,-109.5 358,-109.5 "/>
-<text text-anchor="middle" x="210.5" y="-96.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 2048</text>
-<polyline fill="none" stroke="gray" points="242,-89.5 242,-109.5 "/>
-<text text-anchor="middle" x="300" y="-96.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">1A53BC68A06E022E</text>
-</g>
-<!-- a_120&#45;&gt;a_62 -->
-<g id="edge6" class="edge">
-<title>a_120&#45;&gt;a_62</title>
-<path fill="none" stroke="black" d="M283.43,-178.34C281.4,-169.95 279.11,-160.45 276.94,-151.46"/>
-<polygon fill="black" stroke="black" points="280.31,-150.51 274.56,-141.61 273.5,-152.15 280.31,-150.51"/>
-</g>
-<!-- a_62&#45;&gt;a_93 -->
-<g id="edge7" class="edge">
-<title>a_62&#45;&gt;a_93</title>
-<path fill="none" stroke="black" d="M245.65,-89.34C237.38,-80.23 227.92,-69.81 219.15,-60.15"/>
-<polygon fill="black" stroke="black" points="221.61,-57.66 212.3,-52.61 216.43,-62.36 221.61,-57.66"/>
-</g>
-</g>
-</svg>
diff --git a/keys/2BE25AAE87E87347.asc b/keys/2BE25AAE87E87347.asc
deleted file mode 100644
index 8453a24aca5d..000000000000
--- a/keys/2BE25AAE87E87347.asc
+++ /dev/null
@@ -1,136 +0,0 @@
-pub   rsa4096 2018-08-13 [SC] [expires: 2024-07-17]
-      EFF6A8104685CC198BF81FC62BE25AAE87E87347
-uid                      Imre Kaloz <kaloz@dune.hu>
-uid                      Imre Kaloz <kaloz@openwrt.org>
-sub   rsa4096 2018-08-13 [E] [expires: 2024-07-17]
-      1902F334E0FFBB7E5928BBA45009A7F02C135C5A
-sub   ed25519 2020-04-09 [A]
-      9074B5A9F26649ECE9A1916C8EE3D85414B99A4F
-
------BEGIN PGP PUBLIC KEY BLOCK-----
-
-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
-wstBDaS6Ak7DeKkeuz9UR7LZN5Vy1A==
-=qAQI
------END PGP PUBLIC KEY BLOCK-----
-- 
2.50.1

