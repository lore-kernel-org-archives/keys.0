Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6332426ACD
	for <keys@linux.kernel.org>; Wed,  9 Apr 2025 09:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744191617; cv=none; b=qgzW1MDN8jtDAL7JoUO3Lv0XKWSP84ohmlhppuU2/3PC8v+axpr6h1maRgFDd4EwWmrkmOV1hrHzyu1QK4CwWsqRhvU9osnFMGx0Y9rW5DZiJhXOvTWXoNiBkdzJEG/l7XXYyQxnCJ1wPEus9r5VCmNK4B1g2E0CrNWRlWsYj3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744191617; c=relaxed/simple;
	bh=lxUcxuqy3UwGv8Zj7sh3zq1449RpkaHoQ6LZqOTnR60=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=GVfdoRIrW7HZsOyfMRWcS7rnG4aRmVDsY6L1tX/6z7CyxusB42dw1BNaj2Nwddzvbq2/tFjnrH654TZrkxfTCvZaooS8REdzLod7xYZiXgvWfuklaBafMaKEC9efjNl/2GqCHHx820/ASEiR3aKM6xk6H0AntyMuAbhJQD/9VRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HPhCQKVz; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HPhCQKVz"
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3995ff6b066so3558218f8f.3
        for <keys@linux.kernel.org>; Wed, 09 Apr 2025 02:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744191612; x=1744796412; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ybeBClIi6KNXEWQljq1XAOY6nZOO6L2oJFhyH3OQ3kA=;
        b=HPhCQKVzdvQLKerGm85ekXS4DVqvmG0BtqYjnD76C9Xch0PR5r4Z+OcbAKiDag1mnN
         5GngDpthtsh7rnt7TQhWSuJZ1S/iULjbLs0pnzC8ZY7z8NBdM8ij1edvL1+r1p9qgyH6
         WTo6yAESdm+fadWXC4JKUDx/neKvhjA1yWz1pqvbCFL/wOmPUFRnuOyUbGfcCk8mWF7A
         vlNqFWjnQffJMJHUHQEXzBsVimMVZQ2/hBEggBoNWJTFF3CvKz2xAVabDHmSWXGgZ/K1
         GjaBSX+jE1SCAIH4p+UJlGwk6SorcNjqt73NVNGiFYmm4Pm2gCptztaPJxIiKHYsV5K5
         vvIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744191612; x=1744796412;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ybeBClIi6KNXEWQljq1XAOY6nZOO6L2oJFhyH3OQ3kA=;
        b=lKoQiMqPI0WR7Rw3CrrlrF4hs1+zgG5+odPFw3hvEA8wKNC/x5HxZDXmFcV8YJlRmF
         vQethpfEzvj0KzJxOwkbSwAp86hPAdJV6/K2+v2awi1d0r7V1PQMHvwINVcobT8EzerZ
         6Zxxb8bNZji4uQOjx1MlnIhKK/Otm+fER0paHMwspIRQ2cDjpRMKZeV1OU/bvqC6AT52
         mXfFYy1bVoJcsZZ/B23dyc1ZKnAyUt7mrwN/7Uw+Jj1/dIcw0gH0x6H58aQ0u/UMDD3i
         KL4hJXBhjr7vXuoNu8yYOx6w4vpAQpb0oP1YdOzNzfFzywSXrX0lkrzOITLvMatZt6Nw
         v5/w==
X-Gm-Message-State: AOJu0YzLp7yJ3aS1ppdVgNgMvG5UYZlcvsNI9/r6wJhasyvsVmAXWsos
	93HUB6F1rYrtSRR/7n3AqdMNySCgoyFyTpLmbJbaZP3vcL5VfYCgmxy3m/ajZpolAhf6XsaC+W6
	3RKk=
X-Gm-Gg: ASbGncsUwScn8bRtcfdPkg5ARWLH0liibvzFUKBIS/3bAEiBEBRiTkVXA2AOla52ocT
	CERFycGoAjgqZhGWFPCYOeA62t8q0lPa/VlkIcx7n7IqYjiBFG+l22eEN+EZfcyFPnagE9GWm6x
	A2plv8EeTEhbFwZKDm/W9VJqqYtjMwPOBVC+Ih12FXonToGhcsRdyiYnfZpsnHDMjIblB3GgZmA
	FBcH/8+Wp5C6zKhCYyF/2aiMmADCV13j7u7u2Jjn0FgNySUsbLXfLzRZ/YQjpA00cW9mwf9lt4a
	FTuLiyIOnuTaNqt9qu7eCF2gA3T+uEIbD3LTeO4DqObfj5rjS71H1+Pkw0oBz9CnBqga75gZeBw
	35TGXaL9wLz7AxTFYeg==
X-Google-Smtp-Source: AGHT+IEn5LTSwrSZk7BhbNDQBtF5U9pot95vuswzPjzgKM7ewuuJjdJhQlRyEeHKYSj7l0FvEdWX9Q==
X-Received: by 2002:a5d:5f45:0:b0:39c:30d8:f104 with SMTP id ffacd0b85a97d-39d88525e41mr1520813f8f.6.1744191611508;
        Wed, 09 Apr 2025 02:40:11 -0700 (PDT)
Received: from localhost (p200300f65f14610400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f14:6104::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-39d8938a808sm1119465f8f.53.2025.04.09.02.40.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 02:40:11 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Subject: [PATCH] Mark all missing keys red and expired keys orange in the graphs
Date: Wed,  9 Apr 2025 11:40:00 +0200
Message-ID: <20250409093959.1240211-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=20492; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=lxUcxuqy3UwGv8Zj7sh3zq1449RpkaHoQ6LZqOTnR60=; b=owGbwMvMwMXY3/A7olbonx/jabUkhvRvDvmd/Bc+7dsfl151xZjp1C9pG9uCA32/tVbu3K+6K mOK95FznYzGLAyMXAyyYoos9o1rMq2q5CI71/67DDOIlQlkCgMXpwBMRG0L+2+WrZkvnA/uaCpr 3heT/uRBmQn/CZUUK9/KLf+mC5qpFU/n3RjMm6vdfMHEqbC372VOv+Q/52L1u2IKnm3Zd+7rWe7 86sJpbFJWpLHBgbNeQeQYx75rN3n3J73alLZU87uJ983VB2aLl1/O31rVcHmN2l3VTb9VjyZv6M 2tK1D9oD5noVWNaqPQyjNHjhT05azwXr599VGPKK6C/2b/Vvd0nFoamP4oJSyybWXXvK2MRhcSX 75htKq4qrvMx+AgX/rb/Kp7WeKX/SddTOB3XjHZvEBh43Y7g/U3Ha2lTBUFStQvHV3H4cOhXp4m JnjmywnFsBVZ8ekzZzv3J2WUy+kLFXO7BL9bFHTR5OgWAA==
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

In commit 2dd67ee0231c ("Drop all keys that expired in 2023 or before")
several keys were removed that are still part of trust chains.

Also there are currently 15 expired keys that are also expired. 5 of
them were already updated with a later expiry date on the keyservers.

Mark the nodes of removed keys in all graphs red and the nodes of the 10
really expired keys still in the keyring orange.

So the following non-expired keys wouldn't qualify for inclusion into
the keyring today as is because there is no valid path from Linus to
them:

	Marek Behún 26BCFA05FCF60E4C)
	Minchan Kim (87C1A206239D04FC)

But updating the signatures for both keys from keyserver.ubuntu.com
fixes these.
---
 graphs/0AA04DC735ACE2B5.svg | 2 +-
 graphs/130387AC5F0AFE3F.svg | 2 +-
 graphs/23863DC3831DB2B1.svg | 2 +-
 graphs/26BCFA05FCF60E4C.svg | 2 +-
 graphs/2BE25AAE87E87347.svg | 2 +-
 graphs/442D5E992BA82224.svg | 2 +-
 graphs/444D05FEF336F5F3.svg | 2 +-
 graphs/4C3262CBD285EB87.svg | 2 +-
 graphs/503BF2D40A30BDB9.svg | 2 +-
 graphs/544373AF0A7D38A7.svg | 2 +-
 graphs/59FF77874E89E813.svg | 2 +-
 graphs/69D7F1DDE28AC25E.svg | 2 +-
 graphs/70AA62F3B95C551B.svg | 2 +-
 graphs/7A23E466D4A2B81E.svg | 2 +-
 graphs/87C1A206239D04FC.svg | 2 +-
 graphs/BB9C8BF865485586.svg | 2 +-
 graphs/BD6A501CB78B7C26.svg | 2 +-
 graphs/C07AE44466FB6D66.svg | 2 +-
 graphs/C83EA4603047E9B3.svg | 2 +-
 graphs/D65016F35352AA40.svg | 2 +-
 graphs/E7F85821938ABF6F.svg | 2 +-
 21 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/graphs/0AA04DC735ACE2B5.svg b/graphs/0AA04DC735ACE2B5.svg
index 06b21a1f3d70..f7f529aaa533 100644
--- a/graphs/0AA04DC735ACE2B5.svg
+++ b/graphs/0AA04DC735ACE2B5.svg
@@ -25,7 +25,7 @@
 <text text-anchor="middle" x="135.5" y="-96.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">E63EDCA9329DD07E</text>
 </g>
 <!-- a_19 -->
-<g id="node3" class="node">
+<g id="node3" class="node" fill="orange">
 <title>a_19</title>
 <path fill="none" stroke="gray" d="M25,-0.5C25,-0.5 183,-0.5 183,-0.5 189,-0.5 195,-6.5 195,-12.5 195,-12.5 195,-40.5 195,-40.5 195,-46.5 189,-52.5 183,-52.5 183,-52.5 25,-52.5 25,-52.5 19,-52.5 13,-46.5 13,-40.5 13,-40.5 13,-12.5 13,-12.5 13,-6.5 19,-0.5 25,-0.5"/>
 <text text-anchor="middle" x="104" y="-39.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Bothersome Borer</text>
diff --git a/graphs/130387AC5F0AFE3F.svg b/graphs/130387AC5F0AFE3F.svg
index a4573f0fe0fc..7969e9c799be 100644
--- a/graphs/130387AC5F0AFE3F.svg
+++ b/graphs/130387AC5F0AFE3F.svg
@@ -133,7 +133,7 @@
 <polygon fill="black" stroke="black" points="289,-62.61 285.5,-52.61 282,-62.61 289,-62.61"/>
 </g>
 <!-- a_330 -->
-<g id="node8" class="node">
+<g id="node8" class="node" fill="orange">
 <title>a_330</title>
 <path fill="none" stroke="gray" d="M403.5,-89.5C403.5,-89.5 561.5,-89.5 561.5,-89.5 567.5,-89.5 573.5,-95.5 573.5,-101.5 573.5,-101.5 573.5,-129.5 573.5,-129.5 573.5,-135.5 567.5,-141.5 561.5,-141.5 561.5,-141.5 403.5,-141.5 403.5,-141.5 397.5,-141.5 391.5,-135.5 391.5,-129.5 391.5,-129.5 391.5,-101.5 391.5,-101.5 391.5,-95.5 397.5,-89.5 403.5,-89.5"/>
 <text text-anchor="middle" x="482.5" y="-128.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Jacek Anaszewski</text>
diff --git a/graphs/23863DC3831DB2B1.svg b/graphs/23863DC3831DB2B1.svg
index a1cc2ffb1aae..5340e470ce24 100644
--- a/graphs/23863DC3831DB2B1.svg
+++ b/graphs/23863DC3831DB2B1.svg
@@ -76,7 +76,7 @@
 <polygon fill="black" stroke="black" points="107.5,-151.61 104,-141.61 100.5,-151.61 107.5,-151.61"/>
 </g>
 <!-- a_78 -->
-<g id="node5" class="node">
+<g id="node5" class="node" fill="orange">
 <title>a_78</title>
 <path fill="none" stroke="gray" d="M25.5,-0.5C25.5,-0.5 182.5,-0.5 182.5,-0.5 188.5,-0.5 194.5,-6.5 194.5,-12.5 194.5,-12.5 194.5,-40.5 194.5,-40.5 194.5,-46.5 188.5,-52.5 182.5,-52.5 182.5,-52.5 25.5,-52.5 25.5,-52.5 19.5,-52.5 13.5,-46.5 13.5,-40.5 13.5,-40.5 13.5,-12.5 13.5,-12.5 13.5,-6.5 19.5,-0.5 25.5,-0.5"/>
 <text text-anchor="middle" x="104" y="-39.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Kieran Bingham</text>
diff --git a/graphs/26BCFA05FCF60E4C.svg b/graphs/26BCFA05FCF60E4C.svg
index 6d00e002a309..613244fc26ea 100644
--- a/graphs/26BCFA05FCF60E4C.svg
+++ b/graphs/26BCFA05FCF60E4C.svg
@@ -25,7 +25,7 @@
 <text text-anchor="middle" x="135.25" y="-194.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">EF1F7EB8765E435D</text>
 </g>
 <!-- a_440 -->
-<g id="node3" class="node">
+<g id="node3" class="node" fill="orange">
 <title>a_440</title>
 <path fill="none" stroke="gray" d="M25.75,-94C25.75,-94 182.25,-94 182.25,-94 188.25,-94 194.25,-100 194.25,-106 194.25,-106 194.25,-138.5 194.25,-138.5 194.25,-144.5 188.25,-150.5 182.25,-150.5 182.25,-150.5 25.75,-150.5 25.75,-150.5 19.75,-150.5 13.75,-144.5 13.75,-138.5 13.75,-138.5 13.75,-106 13.75,-106 13.75,-100 19.75,-94 25.75,-94"/>
 <text text-anchor="middle" x="104" y="-136.05" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Jacek Anaszewski</text>
diff --git a/graphs/2BE25AAE87E87347.svg b/graphs/2BE25AAE87E87347.svg
index f5b8c3a3f4ee..64bad35ddc48 100644
--- a/graphs/2BE25AAE87E87347.svg
+++ b/graphs/2BE25AAE87E87347.svg
@@ -76,7 +76,7 @@
 <polygon fill="black" stroke="black" points="255.39,-328.81 260.64,-319.61 250.8,-323.53 255.39,-328.81"/>
 </g>
 <!-- a_93 -->
-<g id="node4" class="node">
+<g id="node4" class="node" fill="orange">
 <title>a_93</title>
 <path fill="none" stroke="gray" d="M112.5,-0.5C112.5,-0.5 266.5,-0.5 266.5,-0.5 272.5,-0.5 278.5,-6.5 278.5,-12.5 278.5,-12.5 278.5,-40.5 278.5,-40.5 278.5,-46.5 272.5,-52.5 266.5,-52.5 266.5,-52.5 112.5,-52.5 112.5,-52.5 106.5,-52.5 100.5,-46.5 100.5,-40.5 100.5,-40.5 100.5,-12.5 100.5,-12.5 100.5,-6.5 106.5,-0.5 112.5,-0.5"/>
 <text text-anchor="middle" x="189.5" y="-39.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Imre Kaloz</text>
diff --git a/graphs/442D5E992BA82224.svg b/graphs/442D5E992BA82224.svg
index 2e55298f6822..285f7a0383f7 100644
--- a/graphs/442D5E992BA82224.svg
+++ b/graphs/442D5E992BA82224.svg
@@ -110,7 +110,7 @@
 <polygon fill="black" stroke="black" points="290,-240.61 286.5,-230.61 283,-240.61 290,-240.61"/>
 </g>
 <!-- a_188 -->
-<g id="node7" class="node">
+<g id="node7" class="node" fill="red">
 <title>a_188</title>
 <path fill="none" stroke="gray" d="M189.5,-89.5C189.5,-89.5 343.5,-89.5 343.5,-89.5 349.5,-89.5 355.5,-95.5 355.5,-101.5 355.5,-101.5 355.5,-129.5 355.5,-129.5 355.5,-135.5 349.5,-141.5 343.5,-141.5 343.5,-141.5 189.5,-141.5 189.5,-141.5 183.5,-141.5 177.5,-135.5 177.5,-129.5 177.5,-129.5 177.5,-101.5 177.5,-101.5 177.5,-95.5 183.5,-89.5 189.5,-89.5"/>
 <text text-anchor="middle" x="266.5" y="-128.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Boris Brezillon</text>
diff --git a/graphs/444D05FEF336F5F3.svg b/graphs/444D05FEF336F5F3.svg
index 626cfb57084a..31392e335aa8 100644
--- a/graphs/444D05FEF336F5F3.svg
+++ b/graphs/444D05FEF336F5F3.svg
@@ -127,7 +127,7 @@
 <polygon fill="black" stroke="black" points="291.9,-240.57 288.29,-230.61 284.9,-240.65 291.9,-240.57"/>
 </g>
 <!-- a_161 -->
-<g id="node8" class="node">
+<g id="node8" class="node" fill="red">
 <title>a_161</title>
 <path fill="none" stroke="gray" d="M210.5,-89.5C210.5,-89.5 365.5,-89.5 365.5,-89.5 371.5,-89.5 377.5,-95.5 377.5,-101.5 377.5,-101.5 377.5,-129.5 377.5,-129.5 377.5,-135.5 371.5,-141.5 365.5,-141.5 365.5,-141.5 210.5,-141.5 210.5,-141.5 204.5,-141.5 198.5,-135.5 198.5,-129.5 198.5,-129.5 198.5,-101.5 198.5,-101.5 198.5,-95.5 204.5,-89.5 210.5,-89.5"/>
 <text text-anchor="middle" x="288" y="-128.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Mathieu Poirier</text>
diff --git a/graphs/4C3262CBD285EB87.svg b/graphs/4C3262CBD285EB87.svg
index c0721f167ca4..c703f436dc85 100644
--- a/graphs/4C3262CBD285EB87.svg
+++ b/graphs/4C3262CBD285EB87.svg
@@ -25,7 +25,7 @@
 <text text-anchor="middle" x="135.5" y="-96.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">E63EDCA9329DD07E</text>
 </g>
 <!-- a_133 -->
-<g id="node3" class="node">
+<g id="node3" class="node" fill="orange">
 <title>a_133</title>
 <path fill="none" stroke="gray" d="M26,-0.5C26,-0.5 182,-0.5 182,-0.5 188,-0.5 194,-6.5 194,-12.5 194,-12.5 194,-40.5 194,-40.5 194,-46.5 188,-52.5 182,-52.5 182,-52.5 26,-52.5 26,-52.5 20,-52.5 14,-46.5 14,-40.5 14,-40.5 14,-12.5 14,-12.5 14,-6.5 20,-0.5 26,-0.5"/>
 <text text-anchor="middle" x="104" y="-39.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Confounding Cockroach</text>
diff --git a/graphs/503BF2D40A30BDB9.svg b/graphs/503BF2D40A30BDB9.svg
index 0844c15d5ec7..e828b45ed9d1 100644
--- a/graphs/503BF2D40A30BDB9.svg
+++ b/graphs/503BF2D40A30BDB9.svg
@@ -139,7 +139,7 @@
 <polygon fill="black" stroke="black" points="412.11,-57.66 402.8,-52.61 406.93,-62.36 412.11,-57.66"/>
 </g>
 <!-- a_57 -->
-<g id="node8" class="node">
+<g id="node8" class="node" fill="red">
 <title>a_57</title>
 <path fill="none" stroke="gray" d="M598.5,-89.5C598.5,-89.5 751.5,-89.5 751.5,-89.5 757.5,-89.5 763.5,-95.5 763.5,-101.5 763.5,-101.5 763.5,-129.5 763.5,-129.5 763.5,-135.5 757.5,-141.5 751.5,-141.5 751.5,-141.5 598.5,-141.5 598.5,-141.5 592.5,-141.5 586.5,-135.5 586.5,-129.5 586.5,-129.5 586.5,-101.5 586.5,-101.5 586.5,-95.5 592.5,-89.5 598.5,-89.5"/>
 <text text-anchor="middle" x="675" y="-128.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Tejun Heo</text>
diff --git a/graphs/544373AF0A7D38A7.svg b/graphs/544373AF0A7D38A7.svg
index 399313bbd280..7bf01b13572e 100644
--- a/graphs/544373AF0A7D38A7.svg
+++ b/graphs/544373AF0A7D38A7.svg
@@ -116,7 +116,7 @@
 <polygon fill="black" stroke="black" points="289,-62.67 285.5,-52.67 282,-62.67 289,-62.67"/>
 </g>
 <!-- a_52 -->
-<g id="node7" class="node">
+<g id="node7" class="node" fill="red">
 <title>a_52</title>
 <path fill="none" stroke="gray" d="M405,-178.5C405,-178.5 558,-178.5 558,-178.5 564,-178.5 570,-184.5 570,-190.5 570,-190.5 570,-218.5 570,-218.5 570,-224.5 564,-230.5 558,-230.5 558,-230.5 405,-230.5 405,-230.5 399,-230.5 393,-224.5 393,-218.5 393,-218.5 393,-190.5 393,-190.5 393,-184.5 399,-178.5 405,-178.5"/>
 <text text-anchor="middle" x="481.5" y="-217.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Tejun Heo</text>
diff --git a/graphs/59FF77874E89E813.svg b/graphs/59FF77874E89E813.svg
index eb03a8ec72c2..88b3e4b17eaf 100644
--- a/graphs/59FF77874E89E813.svg
+++ b/graphs/59FF77874E89E813.svg
@@ -25,7 +25,7 @@
 <text text-anchor="middle" x="122.5" y="-185.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">2EA76B9C2B466D9D</text>
 </g>
 <!-- a_52 -->
-<g id="node3" class="node">
+<g id="node3" class="node" fill="red">
 <title>a_52</title>
 <path fill="none" stroke="gray" d="M16.5,-89.5C16.5,-89.5 169.5,-89.5 169.5,-89.5 175.5,-89.5 181.5,-95.5 181.5,-101.5 181.5,-101.5 181.5,-129.5 181.5,-129.5 181.5,-135.5 175.5,-141.5 169.5,-141.5 169.5,-141.5 16.5,-141.5 16.5,-141.5 10.5,-141.5 4.5,-135.5 4.5,-129.5 4.5,-129.5 4.5,-101.5 4.5,-101.5 4.5,-95.5 10.5,-89.5 16.5,-89.5"/>
 <text text-anchor="middle" x="93" y="-128.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Tejun Heo</text>
diff --git a/graphs/69D7F1DDE28AC25E.svg b/graphs/69D7F1DDE28AC25E.svg
index 524cd3c4bd21..c0f31eee90f6 100644
--- a/graphs/69D7F1DDE28AC25E.svg
+++ b/graphs/69D7F1DDE28AC25E.svg
@@ -93,7 +93,7 @@
 <polygon fill="black" stroke="black" points="423.51,-326.73 431.27,-319.52 420.7,-320.32 423.51,-326.73"/>
 </g>
 <!-- a_217 -->
-<g id="node4" class="node">
+<g id="node4" class="node" fill="orange">
 <title>a_217</title>
 <path fill="none" stroke="gray" d="M211,-0.5C211,-0.5 368,-0.5 368,-0.5 374,-0.5 380,-6.5 380,-12.5 380,-12.5 380,-40.5 380,-40.5 380,-46.5 374,-52.5 368,-52.5 368,-52.5 211,-52.5 211,-52.5 205,-52.5 199,-46.5 199,-40.5 199,-40.5 199,-12.5 199,-12.5 199,-6.5 205,-0.5 211,-0.5"/>
 <text text-anchor="middle" x="289.5" y="-39.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Vineet Gupta</text>
diff --git a/graphs/70AA62F3B95C551B.svg b/graphs/70AA62F3B95C551B.svg
index 1fffe2799d0e..4201af7ee546 100644
--- a/graphs/70AA62F3B95C551B.svg
+++ b/graphs/70AA62F3B95C551B.svg
@@ -93,7 +93,7 @@
 <polygon fill="black" stroke="black" points="94,-151.61 90.5,-141.61 87,-151.61 94,-151.61"/>
 </g>
 <!-- a_470 -->
-<g id="node5" class="node">
+<g id="node5" class="node" fill="orange">
 <title>a_470</title>
 <path fill="none" stroke="gray" d="M111,-0.5C111,-0.5 266,-0.5 266,-0.5 272,-0.5 278,-6.5 278,-12.5 278,-12.5 278,-40.5 278,-40.5 278,-46.5 272,-52.5 266,-52.5 266,-52.5 111,-52.5 111,-52.5 105,-52.5 99,-46.5 99,-40.5 99,-40.5 99,-12.5 99,-12.5 99,-6.5 105,-0.5 111,-0.5"/>
 <text text-anchor="middle" x="188.5" y="-39.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Eric Dumazet</text>
diff --git a/graphs/7A23E466D4A2B81E.svg b/graphs/7A23E466D4A2B81E.svg
index 90bb8317a738..a31db10bbf29 100644
--- a/graphs/7A23E466D4A2B81E.svg
+++ b/graphs/7A23E466D4A2B81E.svg
@@ -139,7 +139,7 @@
 <polygon fill="black" stroke="black" points="412.11,-57.66 402.8,-52.61 406.93,-62.36 412.11,-57.66"/>
 </g>
 <!-- a_59 -->
-<g id="node8" class="node">
+<g id="node8" class="node" fill="red">
 <title>a_59</title>
 <path fill="none" stroke="gray" d="M598.5,-89.5C598.5,-89.5 751.5,-89.5 751.5,-89.5 757.5,-89.5 763.5,-95.5 763.5,-101.5 763.5,-101.5 763.5,-129.5 763.5,-129.5 763.5,-135.5 757.5,-141.5 751.5,-141.5 751.5,-141.5 598.5,-141.5 598.5,-141.5 592.5,-141.5 586.5,-135.5 586.5,-129.5 586.5,-129.5 586.5,-101.5 586.5,-101.5 586.5,-95.5 592.5,-89.5 598.5,-89.5"/>
 <text text-anchor="middle" x="675" y="-128.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Tejun Heo</text>
diff --git a/graphs/87C1A206239D04FC.svg b/graphs/87C1A206239D04FC.svg
index 730c451597ca..2ec5b930114c 100644
--- a/graphs/87C1A206239D04FC.svg
+++ b/graphs/87C1A206239D04FC.svg
@@ -25,7 +25,7 @@
 <text text-anchor="middle" x="135.5" y="-185.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">2EA76B9C2B466D9D</text>
 </g>
 <!-- a_52 -->
-<g id="node3" class="node">
+<g id="node3" class="node" fill="red">
 <title>a_52</title>
 <path fill="none" stroke="gray" d="M27.5,-89.5C27.5,-89.5 180.5,-89.5 180.5,-89.5 186.5,-89.5 192.5,-95.5 192.5,-101.5 192.5,-101.5 192.5,-129.5 192.5,-129.5 192.5,-135.5 186.5,-141.5 180.5,-141.5 180.5,-141.5 27.5,-141.5 27.5,-141.5 21.5,-141.5 15.5,-135.5 15.5,-129.5 15.5,-129.5 15.5,-101.5 15.5,-101.5 15.5,-95.5 21.5,-89.5 27.5,-89.5"/>
 <text text-anchor="middle" x="104" y="-128.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Tejun Heo</text>
diff --git a/graphs/BB9C8BF865485586.svg b/graphs/BB9C8BF865485586.svg
index e8c48950c78b..c01795b13102 100644
--- a/graphs/BB9C8BF865485586.svg
+++ b/graphs/BB9C8BF865485586.svg
@@ -25,7 +25,7 @@
 <text text-anchor="middle" x="135.5" y="-274.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">2EA76B9C2B466D9D</text>
 </g>
 <!-- a_52 -->
-<g id="node3" class="node">
+<g id="node3" class="node" fill="red">
 <title>a_52</title>
 <path fill="none" stroke="gray" d="M27.5,-178.5C27.5,-178.5 180.5,-178.5 180.5,-178.5 186.5,-178.5 192.5,-184.5 192.5,-190.5 192.5,-190.5 192.5,-218.5 192.5,-218.5 192.5,-224.5 186.5,-230.5 180.5,-230.5 180.5,-230.5 27.5,-230.5 27.5,-230.5 21.5,-230.5 15.5,-224.5 15.5,-218.5 15.5,-218.5 15.5,-190.5 15.5,-190.5 15.5,-184.5 21.5,-178.5 27.5,-178.5"/>
 <text text-anchor="middle" x="104" y="-217.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Tejun Heo</text>
diff --git a/graphs/BD6A501CB78B7C26.svg b/graphs/BD6A501CB78B7C26.svg
index c999e0cf6903..d69e054bee7e 100644
--- a/graphs/BD6A501CB78B7C26.svg
+++ b/graphs/BD6A501CB78B7C26.svg
@@ -25,7 +25,7 @@
 <text text-anchor="middle" x="119.5" y="-274.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">EF1F7EB8765E435D</text>
 </g>
 <!-- a_330 -->
-<g id="node3" class="node">
+<g id="node3" class="node" fill="orange">
 <title>a_330</title>
 <path fill="none" stroke="gray" d="M293,-0.5C293,-0.5 451,-0.5 451,-0.5 457,-0.5 463,-6.5 463,-12.5 463,-12.5 463,-40.5 463,-40.5 463,-46.5 457,-52.5 451,-52.5 451,-52.5 293,-52.5 293,-52.5 287,-52.5 281,-46.5 281,-40.5 281,-40.5 281,-12.5 281,-12.5 281,-6.5 287,-0.5 293,-0.5"/>
 <text text-anchor="middle" x="372" y="-39.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Jacek Anaszewski</text>
diff --git a/graphs/C07AE44466FB6D66.svg b/graphs/C07AE44466FB6D66.svg
index dc545671ecb3..8a8721b5a2a7 100644
--- a/graphs/C07AE44466FB6D66.svg
+++ b/graphs/C07AE44466FB6D66.svg
@@ -76,7 +76,7 @@
 <polygon fill="black" stroke="black" points="251.23,-239.84 256.43,-230.61 246.61,-234.58 251.23,-239.84"/>
 </g>
 <!-- a_351 -->
-<g id="node4" class="node">
+<g id="node4" class="node" fill="orange">
 <title>a_351</title>
 <path fill="none" stroke="gray" d="M108.5,-0.5C108.5,-0.5 263.5,-0.5 263.5,-0.5 269.5,-0.5 275.5,-6.5 275.5,-12.5 275.5,-12.5 275.5,-40.5 275.5,-40.5 275.5,-46.5 269.5,-52.5 263.5,-52.5 263.5,-52.5 108.5,-52.5 108.5,-52.5 102.5,-52.5 96.5,-46.5 96.5,-40.5 96.5,-40.5 96.5,-12.5 96.5,-12.5 96.5,-6.5 102.5,-0.5 108.5,-0.5"/>
 <text text-anchor="middle" x="186" y="-39.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Pravin B Shelar</text>
diff --git a/graphs/C83EA4603047E9B3.svg b/graphs/C83EA4603047E9B3.svg
index 86aa3ed41d63..5ce9101f42d4 100644
--- a/graphs/C83EA4603047E9B3.svg
+++ b/graphs/C83EA4603047E9B3.svg
@@ -76,7 +76,7 @@
 <polygon fill="black" stroke="black" points="251.3,-348.24 256.27,-338.88 246.55,-343.1 251.3,-348.24"/>
 </g>
 <!-- a_558 -->
-<g id="node4" class="node">
+<g id="node4" class="node" fill="orange">
 <title>a_558</title>
 <path fill="none" stroke="gray" d="M111.88,-0.5C111.88,-0.5 264.62,-0.5 264.62,-0.5 270.62,-0.5 276.62,-6.5 276.62,-12.5 276.62,-12.5 276.62,-45 276.62,-45 276.62,-51 270.62,-57 264.62,-57 264.62,-57 111.88,-57 111.88,-57 105.88,-57 99.88,-51 99.88,-45 99.88,-45 99.88,-12.5 99.88,-12.5 99.88,-6.5 105.88,-0.5 111.88,-0.5"/>
 <text text-anchor="middle" x="188.25" y="-42.55" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Allison Henderson</text>
diff --git a/graphs/D65016F35352AA40.svg b/graphs/D65016F35352AA40.svg
index 79507c9fadb3..6aee34fadae7 100644
--- a/graphs/D65016F35352AA40.svg
+++ b/graphs/D65016F35352AA40.svg
@@ -116,7 +116,7 @@
 <polygon fill="black" stroke="black" points="284.5,-62.67 281,-52.67 277.5,-62.67 284.5,-62.67"/>
 </g>
 <!-- a_52 -->
-<g id="node7" class="node">
+<g id="node7" class="node" fill="red">
 <title>a_52</title>
 <path fill="none" stroke="gray" d="M400.5,-178.5C400.5,-178.5 553.5,-178.5 553.5,-178.5 559.5,-178.5 565.5,-184.5 565.5,-190.5 565.5,-190.5 565.5,-218.5 565.5,-218.5 565.5,-224.5 559.5,-230.5 553.5,-230.5 553.5,-230.5 400.5,-230.5 400.5,-230.5 394.5,-230.5 388.5,-224.5 388.5,-218.5 388.5,-218.5 388.5,-190.5 388.5,-190.5 388.5,-184.5 394.5,-178.5 400.5,-178.5"/>
 <text text-anchor="middle" x="477" y="-217.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Tejun Heo</text>
diff --git a/graphs/E7F85821938ABF6F.svg b/graphs/E7F85821938ABF6F.svg
index d5d44548375b..956d5f65cd63 100644
--- a/graphs/E7F85821938ABF6F.svg
+++ b/graphs/E7F85821938ABF6F.svg
@@ -25,7 +25,7 @@
 <text text-anchor="middle" x="135.5" y="-96.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">E63EDCA9329DD07E</text>
 </g>
 <!-- a_409 -->
-<g id="node3" class="node">
+<g id="node3" class="node" fill="orange">
 <title>a_409</title>
 <path fill="none" stroke="gray" d="M28.5,-0.5C28.5,-0.5 179.5,-0.5 179.5,-0.5 185.5,-0.5 191.5,-6.5 191.5,-12.5 191.5,-12.5 191.5,-40.5 191.5,-40.5 191.5,-46.5 185.5,-52.5 179.5,-52.5 179.5,-52.5 28.5,-52.5 28.5,-52.5 22.5,-52.5 16.5,-46.5 16.5,-40.5 16.5,-40.5 16.5,-12.5 16.5,-12.5 16.5,-6.5 22.5,-0.5 28.5,-0.5"/>
 <text text-anchor="middle" x="104" y="-39.7" font-family="droid sans,dejavu sans,helvetica" font-size="11.00">Aggravating Aphid</text>

base-commit: ed45fe570ec2a373cc5543071b43fb5b4749b3a4
-- 
2.47.2

