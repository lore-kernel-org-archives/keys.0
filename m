Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B0762E36E7
	for <keys@linux.kernel.org>; Tue,  5 Aug 2025 07:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754380780; cv=none; b=A7AjNqi0YSK9HgBdIGMRMFbPEQaXpQTpJbXUTMSJ29jlIgiss/YOUsqf0ZgpkhPnhU471/Ge5gsMXfym3eDdsnKkvCjTb7IlWXagW4n1NQIOiGp+p33Us8xxRb3BYnqL5btTSNDBkrOJKorU9dg/ta6zbKMpc+WcGS79Tjl7nO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754380780; c=relaxed/simple;
	bh=1LjbigFPi7cJto/y8ppn+WMJaFe9woER3BlOhax/nmg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=a1blyMCVpAWLRcCLYuEJbi35lsvYN9J8nHgOEnM+zoGOi5sCtdvyf0LERJm3Yba/ktb0UcpdRieuzM5VVGUnrXmEraLn/n8nq2PYNTzYVj6C+p+AjvzVODOx/KIKBs2zKiz9igo30oqf17iwKjALY2iyMaSh+du4HAC6bC/j7p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=d2IFrvR8; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="d2IFrvR8"
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-af95d5c0736so365777466b.2
        for <keys@linux.kernel.org>; Tue, 05 Aug 2025 00:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754380777; x=1754985577; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4oQitcLwAJ+pDvq1oM0yyOFNqgt7NbCQ1DjWL4XXvxw=;
        b=d2IFrvR8UQwMSw/PqOmERYOx8P10yPS0MQ2U0nJ71pl1qtofqCqyj6C+CSy/xANNfi
         9J5WBItIU3/nQlkZT16IFNSHESQPHYgr4I75EpeIm7V7wpJEkZUaJhZuh8gjRC5mBt9n
         MmrG3viJKtxzzWdrLmtoTBnh+mV4GYmtOH/S38pLHUqofXJhYfIDt9JWMaKlVBbEgViF
         CbDJwQ5W9RkWlNaolhaPERYDDMHtbPT6NKJn+5qzE+FOP7YnKtD++65F8OsDgrt1WFCH
         TPl+qZ7Jaid75imTPyXEsQgZb75DXaGLOPSODRoyY7z2mZlV59eLFn0KlO9aZ/N+duol
         7Vsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754380777; x=1754985577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4oQitcLwAJ+pDvq1oM0yyOFNqgt7NbCQ1DjWL4XXvxw=;
        b=nu13IgOLASNC4WxfTblbVF5dMIZAoNl4esIE1uGe/GYIhnX80M6bH9P0iBfX2OlarQ
         wZs2R65XQZbwPi9HlQfeqfdII3lxWf4by5IV1lak/nir5mcTZNVsBM1vdWSum6GfT6yH
         iIIJJpanXubCZCpJvEWtt1iJ18aBgpvDlhRxvui/libNQrk3WUyI82NhjVdh98oJ1AA0
         IYbNHlTPqwZuuy9N09lMcNLBMbEFlhz6SieLPpMTyqemNnK19Rh1jlYF9hITdSTfOgx8
         rBgiJCTZ5nUB0uP42Yx2xoPPedlQByjXeOK+7libZePCrOmhHWZkFU45mVD1CNUugGgj
         5ntg==
X-Gm-Message-State: AOJu0Yz4jTbDB122u+zQFeZrgzMePARajTh/zuirHndBo+U+QFkeXMm/
	ha4kEVgMd86ONFdBklaETSrgb8PDOIfnAgIeQGbn2m1A3IbSiDp0gF6StInmJHqXaukabxKRw/V
	keiXB
X-Gm-Gg: ASbGncuBXfOOGuNvfbnyV2tzQzDsxIvUP0Aif0QgcRF/1D9ww+XDa3sb2BCzbhByH1g
	ObNiHN/syN38biihx80v/OG2fNHotIDRF4Udeld1eCIHybJoaWIwG50WZAcerlDa28SMvybwtoA
	8OB2dxlzNmyMN4sRPu5oj5qS4MuNIF/x1MBQsssB9Oq6kQP1LCktM8hZmwjD6JLdSGsT5rBTcPT
	xybnIpTvZB2TiXmsR5zacSnzwXG3rdIU7OPukiXN6s0n0AQdWv6AecHXTLfJsxg5P3fhSUNQp+g
	XhBzks+NIUajP2lyJrIIunK7EJ7UogL+FI30kNiIv4FuGvbD+wbHEv+vJkmq0WAs0+oJFa1Q6oJ
	XdiITAmibPl2bJmpJAQ3acUtJsE0=
X-Google-Smtp-Source: AGHT+IFxi00X7bT5VrnpzZU965Xyg14cn8HJU1Z1gosFDPb/SBU0JDcRQLKKSLeNMNwJifl3g9l4bw==
X-Received: by 2002:a17:907:3f1b:b0:af9:7a8b:803a with SMTP id a640c23a62f3a-af97a8b8860mr347849666b.44.1754380776597;
        Tue, 05 Aug 2025 00:59:36 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-af91a21ac0asm862591866b.99.2025.08.05.00.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 00:59:36 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Cc: Pravin B Shelar <pshelar@nicira.com>
Subject: [PATCH 4/7] Remove expired key of Pravin B Shelar
Date: Tue,  5 Aug 2025 09:59:05 +0200
Message-ID: <15d15e27c683af9abf63544c8e17f9423c5d0b18.1754379198.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
References: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=14775; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=1LjbigFPi7cJto/y8ppn+WMJaFe9woER3BlOhax/nmg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBokbnPJYtOGiXfqb08brkxBJHgQb+x1EyU7Yabt lFpuBiC/I6JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaJG5zwAKCRCPgPtYfRL+ TusaCAC5ZfoTFReD30oLCnklqbsIPkrKK376VG1MxVoOwJx57PsNgdBB5d0mH78smHpJ3NLZPfP QKw3oxFWbCQy0dM8A852b433i9smLo0T8q1ogYsm1Od11nvohscKKpCKePaviqa8ok+gyPOSlt1 U9qPpbNlNA4rwnFwOsg6yS31mMe50AHmxObj6o3iw4/xk5ogLe4nyw0aKYvxew1XLYpLGC8e5Px Ud5PtUy0Ar/1zsyS7cxae4685LwRGd+JHIlU8aK0wSHod6AOjYLx287ACdmS/jbhWkToGq+EcyZ f6NoD1xRFyGGvEGKnGkYZ3NUNCnPK2d8XHNbz8tvHav1+3PP
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The key expired in April 2024.
---
 graphs/C07AE44466FB6D66.svg | 119 ------------------------------------
 keys/C07AE44466FB6D66.asc   |  79 ------------------------
 2 files changed, 198 deletions(-)
 delete mode 100644 graphs/C07AE44466FB6D66.svg
 delete mode 100644 keys/C07AE44466FB6D66.asc

diff --git a/graphs/C07AE44466FB6D66.svg b/graphs/C07AE44466FB6D66.svg
deleted file mode 100644
index dc545671ecb3..000000000000
--- a/graphs/C07AE44466FB6D66.svg
+++ /dev/null
@@ -1,119 +0,0 @@
-<?xml version="1.0" encoding="UTF-8" standalone="no"?>
-<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN"
- "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
-<!-- Generated by graphviz version 2.48.0 (0)
- -->
-<!-- Title: G Pages: 1 -->
-<svg width="384pt" height="344pt"
- viewBox="0.00 0.00 384.00 344.00" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
-<g id="graph0" class="graph" transform="scale(1 1) rotate(0) translate(4 340)">
-<title>G</title>
-<polygon fill="white" stroke="transparent" points="-4,4 -4,-340 380,-340 380,4 -4,4"/>
-<g id="clust1" class="cluster">
-<title>cluster_toplevel</title>
-<polygon fill="none" stroke="white" points="90,-259 90,-328 282,-328 282,-259 90,-259"/>
-</g>
-<!-- a_53 -->
-<g id="node1" class="node">
-<title>a_53</title>
-<path fill="none" stroke="gray" d="M12,-178.5C12,-178.5 164,-178.5 164,-178.5 170,-178.5 176,-184.5 176,-190.5 176,-190.5 176,-218.5 176,-218.5 176,-224.5 170,-230.5 164,-230.5 164,-230.5 12,-230.5 12,-230.5 6,-230.5 0,-224.5 0,-218.5 0,-218.5 0,-190.5 0,-190.5 0,-184.5 6,-178.5 12,-178.5"/>
-<text text-anchor="middle" x="88" y="-217.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Benson Leung</text>
-<text text-anchor="middle" x="88" y="-205.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">chromium.org</text>
-<polyline fill="none" stroke="gray" points="0,-198.5 176,-198.5 "/>
-<text text-anchor="middle" x="31.5" y="-185.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="63,-178.5 63,-198.5 "/>
-<text text-anchor="middle" x="119.5" y="-185.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">17212997986C5765</text>
-</g>
-<!-- a_246 -->
-<g id="node3" class="node">
-<title>a_246</title>
-<path fill="none" stroke="gray" d="M12.5,-89.5C12.5,-89.5 163.5,-89.5 163.5,-89.5 169.5,-89.5 175.5,-95.5 175.5,-101.5 175.5,-101.5 175.5,-129.5 175.5,-129.5 175.5,-135.5 169.5,-141.5 163.5,-141.5 163.5,-141.5 12.5,-141.5 12.5,-141.5 6.5,-141.5 0.5,-135.5 0.5,-129.5 0.5,-129.5 0.5,-101.5 0.5,-101.5 0.5,-95.5 6.5,-89.5 12.5,-89.5"/>
-<text text-anchor="middle" x="88" y="-128.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Dmitry Torokhov</text>
-<text text-anchor="middle" x="88" y="-116.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">gmail.com</text>
-<polyline fill="none" stroke="gray" points="0.5,-109.5 175.5,-109.5 "/>
-<text text-anchor="middle" x="32" y="-96.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="63.5,-89.5 63.5,-109.5 "/>
-<text text-anchor="middle" x="119.5" y="-96.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">7EF4F96F2BE9962A</text>
-</g>
-<!-- a_53&#45;&gt;a_246 -->
-<g id="edge2" class="edge">
-<title>a_53&#45;&gt;a_246</title>
-<path fill="none" stroke="black" d="M88,-178.34C88,-170.04 88,-160.65 88,-151.75"/>
-<polygon fill="black" stroke="black" points="91.5,-151.61 88,-141.61 84.5,-151.61 91.5,-151.61"/>
-</g>
-<!-- a_232 -->
-<g id="node2" class="node">
-<title>a_232</title>
-<path fill="none" stroke="gray" d="M110,-267.5C110,-267.5 262,-267.5 262,-267.5 268,-267.5 274,-273.5 274,-279.5 274,-279.5 274,-307.5 274,-307.5 274,-313.5 268,-319.5 262,-319.5 262,-319.5 110,-319.5 110,-319.5 104,-319.5 98,-313.5 98,-307.5 98,-307.5 98,-279.5 98,-279.5 98,-273.5 104,-267.5 110,-267.5"/>
-<text text-anchor="middle" x="186" y="-306.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Linus Torvalds</text>
-<text text-anchor="middle" x="186" y="-294.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">kernel.org</text>
-<polyline fill="none" stroke="gray" points="98,-287.5 274,-287.5 "/>
-<text text-anchor="middle" x="129.5" y="-274.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 2048</text>
-<polyline fill="none" stroke="gray" points="161,-267.5 161,-287.5 "/>
-<text text-anchor="middle" x="217.5" y="-274.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">79BE3E4300411886</text>
-</g>
-<!-- a_232&#45;&gt;a_53 -->
-<g id="edge1" class="edge">
-<title>a_232&#45;&gt;a_53</title>
-<path fill="none" stroke="black" d="M157.65,-267.34C147.09,-257.96 134.96,-247.19 123.81,-237.29"/>
-<polygon fill="black" stroke="black" points="126.08,-234.63 116.28,-230.61 121.44,-239.86 126.08,-234.63"/>
-</g>
-<!-- a_93 -->
-<g id="node5" class="node">
-<title>a_93</title>
-<path fill="none" stroke="gray" d="M206,-178.5C206,-178.5 364,-178.5 364,-178.5 370,-178.5 376,-184.5 376,-190.5 376,-190.5 376,-218.5 376,-218.5 376,-224.5 370,-230.5 364,-230.5 364,-230.5 206,-230.5 206,-230.5 200,-230.5 194,-224.5 194,-218.5 194,-218.5 194,-190.5 194,-190.5 194,-184.5 200,-178.5 206,-178.5"/>
-<text text-anchor="middle" x="285" y="-217.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">John Hawley</text>
-<text text-anchor="middle" x="285" y="-205.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">eaglescrag.net</text>
-<polyline fill="none" stroke="gray" points="194,-198.5 376,-198.5 "/>
-<text text-anchor="middle" x="225.5" y="-185.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="257,-178.5 257,-198.5 "/>
-<text text-anchor="middle" x="316.5" y="-185.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">2EA76B9C2B466D9D</text>
-</g>
-<!-- a_232&#45;&gt;a_93 -->
-<g id="edge4" class="edge">
-<title>a_232&#45;&gt;a_93</title>
-<path fill="none" stroke="black" d="M214.63,-267.34C225.31,-257.96 237.56,-247.19 248.82,-237.29"/>
-<polygon fill="black" stroke="black" points="251.23,-239.84 256.43,-230.61 246.61,-234.58 251.23,-239.84"/>
-</g>
-<!-- a_351 -->
-<g id="node4" class="node">
-<title>a_351</title>
-<path fill="none" stroke="gray" d="M108.5,-0.5C108.5,-0.5 263.5,-0.5 263.5,-0.5 269.5,-0.5 275.5,-6.5 275.5,-12.5 275.5,-12.5 275.5,-40.5 275.5,-40.5 275.5,-46.5 269.5,-52.5 263.5,-52.5 263.5,-52.5 108.5,-52.5 108.5,-52.5 102.5,-52.5 96.5,-46.5 96.5,-40.5 96.5,-40.5 96.5,-12.5 96.5,-12.5 96.5,-6.5 102.5,-0.5 108.5,-0.5"/>
-<text text-anchor="middle" x="186" y="-39.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Pravin B Shelar</text>
-<text text-anchor="middle" x="186" y="-27.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">nicira.com</text>
-<polyline fill="none" stroke="gray" points="96.5,-20.5 275.5,-20.5 "/>
-<text text-anchor="middle" x="128" y="-7.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="159.5,-0.5 159.5,-20.5 "/>
-<text text-anchor="middle" x="217.5" y="-7.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">C07AE44466FB6D66</text>
-</g>
-<!-- a_246&#45;&gt;a_351 -->
-<g id="edge3" class="edge">
-<title>a_246&#45;&gt;a_351</title>
-<path fill="none" stroke="black" d="M116.35,-89.34C126.91,-79.96 139.04,-69.19 150.19,-59.29"/>
-<polygon fill="black" stroke="black" points="152.56,-61.86 157.72,-52.61 147.92,-56.63 152.56,-61.86"/>
-</g>
-<!-- a_147 -->
-<g id="node6" class="node">
-<title>a_147</title>
-<path fill="none" stroke="gray" d="M205.5,-89.5C205.5,-89.5 362.5,-89.5 362.5,-89.5 368.5,-89.5 374.5,-95.5 374.5,-101.5 374.5,-101.5 374.5,-129.5 374.5,-129.5 374.5,-135.5 368.5,-141.5 362.5,-141.5 362.5,-141.5 205.5,-141.5 205.5,-141.5 199.5,-141.5 193.5,-135.5 193.5,-129.5 193.5,-129.5 193.5,-101.5 193.5,-101.5 193.5,-95.5 199.5,-89.5 205.5,-89.5"/>
-<text text-anchor="middle" x="284" y="-128.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Jesse Gross</text>
-<text text-anchor="middle" x="284" y="-116.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">jessegross.com</text>
-<polyline fill="none" stroke="gray" points="193.5,-109.5 374.5,-109.5 "/>
-<text text-anchor="middle" x="225" y="-96.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">RSA 4096</text>
-<polyline fill="none" stroke="gray" points="256.5,-89.5 256.5,-109.5 "/>
-<text text-anchor="middle" x="315.5" y="-96.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">503BF2D40A30BDB9</text>
-</g>
-<!-- a_93&#45;&gt;a_147 -->
-<g id="edge5" class="edge">
-<title>a_93&#45;&gt;a_147</title>
-<path fill="none" stroke="black" d="M284.71,-178.34C284.62,-170.04 284.51,-160.65 284.41,-151.75"/>
-<polygon fill="black" stroke="black" points="287.9,-151.57 284.29,-141.61 280.9,-151.65 287.9,-151.57"/>
-</g>
-<!-- a_147&#45;&gt;a_351 -->
-<g id="edge6" class="edge">
-<title>a_147&#45;&gt;a_351</title>
-<path fill="none" stroke="black" d="M255.65,-89.34C245.09,-79.96 232.96,-69.19 221.81,-59.29"/>
-<polygon fill="black" stroke="black" points="224.08,-56.63 214.28,-52.61 219.44,-61.86 224.08,-56.63"/>
-</g>
-</g>
-</svg>
diff --git a/keys/C07AE44466FB6D66.asc b/keys/C07AE44466FB6D66.asc
deleted file mode 100644
index 8e6da840238e..000000000000
--- a/keys/C07AE44466FB6D66.asc
+++ /dev/null
@@ -1,79 +0,0 @@
-pub   rsa4096 2014-04-30 [SC] [expires: 2024-04-27]
-      9776A21602706C3467875BA7C07AE44466FB6D66
-uid                      Pravin B Shelar <pshelar@nicira.com>
-sub   rsa4096 2014-04-30 [E] [expires: 2024-04-27]
-      7A68644A319776C7208F2759C407F2792E773EB9
-
------BEGIN PGP PUBLIC KEY BLOCK-----
-
-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
-=PaPL
------END PGP PUBLIC KEY BLOCK-----
-- 
2.50.1

