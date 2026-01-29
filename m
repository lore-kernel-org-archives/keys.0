Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D15237998A
	for <keys@linux.kernel.org>; Thu, 29 Jan 2026 09:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769678929; cv=none; b=j2ZEKy5y7iih/SBF7+jDml819ZfgaSAMzAo1pFQP+PrNJLdE5OQ48Oug4Kl4jqDLiqoIod1zNIkM+Rq7Hn3Lk1SblJ3TJov3urcsH8zUfUX1rqZjffyvQxBoEBUsrzEOdYlv8kyR4mry6tQAb5y/vqO7L3++4Mb6tphb6lttw6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769678929; c=relaxed/simple;
	bh=X+gu219e3SgpfcIl4m38HZ3r2On5h+VLh0MKXKTSS0o=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uFhW89eSOjDFHZY6a0EQ4GD2d68BOMBRqdnShgKNM/q3qlHeBeZbuk04YRd9EdiSK2hwdtO6YIaEpWMvi0HWRKQiTuPjGaC0+4wAsMtrWfrduy9A9yhJ0EZKeNVDlMCLgLtlV9sq+01j5bpRnYOkRmJVK/jPj1y4Sq2V7+PWawc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DQnvnr+9; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DQnvnr+9"
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4801c2fae63so5381995e9.2
        for <keys@linux.kernel.org>; Thu, 29 Jan 2026 01:28:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769678925; x=1770283725; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3zXuzCAUVqXjY0LdBcwLsWP25Of6cpDZwnsjdT5PG4M=;
        b=DQnvnr+95MiyIoAbixEaqUns+XZ5TyvgfAX68Y2Dl/APsH5vokzT/FZ4qZ5ID14dvw
         3LpLBclJErJhV62M5QIF0IH3pDxWnHotKipzjmcWa9l+qRCzaA2kgcszxqRlNhBaezD/
         vHWZKxJeIfww2ccsQCsYTz2A8O2IbOEuaCMw043cef6AJmPceJiL5pzH4dR2iv7W0skX
         mhNGR5VPCO5rdB3Daa8Z8UB3L7pWN46MBQWma66qvNSpGHYYqLCRdOwMbKT3+czrWgc3
         hbAJZuxZxgLsX3D6WMAVv8wje0f+G8ZLRBtup3BFfIzUYk6A5VPCbISFxRqtkhcnczf0
         N0Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769678925; x=1770283725;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3zXuzCAUVqXjY0LdBcwLsWP25Of6cpDZwnsjdT5PG4M=;
        b=A2lrltrjWrDWESR8dgwzCZP/bjw/giM7km+8yEb1ER2/uyNFBR9Eq7Ag2aguqJEn91
         a7MPmVllh4goYxILAZKlz/SQBMPByoowieM5rffj3RnpzNWWobZ5cKHiAUmd5S2IpXn9
         B0NdfYALOdrvEv9a44+68Q8v9CYpQTIXau07AaJ3NH6jqSmlFdN1ADmbn3fFM+S0pv8s
         zElKB3z9HxFEETRMNaSPhq87LGazcuchzMVKF/J0VF122k8FZNRI06XeHHploFXJNNyW
         eiSoAa6rcIoY61YABhkSXuh8KOXKb3iOhxN6qDuKZmvtKOk7LP1jgafmbaZbHdw8FJgy
         FOCA==
X-Gm-Message-State: AOJu0YzS7obu913QoP2MEjobiuOvGAAkDgBaeQxha9RU8mKLA44SggJw
	pcEgQdJVAJPnEj00Tys2Ae/KUTmwUIxfrb3dF8icfooP5icFkbgVqgoAQMuNC76IHU4=
X-Gm-Gg: AZuq6aIOfIgvynD4MikXx/ZJqsD3A2M4lq/94hkEHVjJIyzvUfACO+PqhdZkBY3rDZP
	S+y1yi7rJhGXXcozZideVsNgxbUDEy2J2GCkMdEFIyW8bV4cnlCA4kd8tZcIObxWSQtwv/OZqyj
	A1Yhjom0nocP/i0528R9yz19OCIBb15S0g9ks/iRGpUt2Vi0xSpEaC1QFdGS0nMfVCD+D1WnxVA
	OE28VuYfp2Lq9teo3Gmar2NHKMIjjzp7NcapFn7TixqeSvVCnfLcCFtnyrtRHUVRcQRi6MGUjt2
	YJOLX8uJQeh8ccTRBc6KzAh6kXIhUnXQjWvP3ReoWvRU8ZBaRNTf/ebsapRHCyIY5eThU7niw1/
	xUtC6HXHddnTp0FAdc3F+lvJZr9WAKCSJDkDzvp7NjFYGDd2vgmqHBiS9mY13rr64TM/9YJ0nti
	2uY2kk2vWoAdJgb2lD2R6/URCvtKVVhBSkB/KQ9T2kOkzDg8AYtLCbaR2ItT+2crlajc6yPNBy+
	Dc=
X-Received: by 2002:a05:600c:8b30:b0:480:1e8f:d15f with SMTP id 5b1f17b1804b1-48069bfaa0bmr103646145e9.2.1769678925481;
        Thu, 29 Jan 2026 01:28:45 -0800 (PST)
Received: from localhost (p200300f65f20eb04703f3ea9880728e0.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:703f:3ea9:8807:28e0])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-435e10e476dsm13356626f8f.4.2026.01.29.01.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 01:28:45 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Sakari Ailus <sakari.ailus@iki.fi>
Cc: keys@linux.kernel.org
Subject: [PATCH] Drop expired subkey from description of BF53AD52308AD4EC (Sakari Ailus)
Date: Thu, 29 Jan 2026 10:28:37 +0100
Message-ID: <20260129092838.941498-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1315; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=X+gu219e3SgpfcIl4m38HZ3r2On5h+VLh0MKXKTSS0o=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBpeyhGjj4Go3N8PfuLp12KeEQHEP28P7d6Iw6Yu GkxN7bzfZyJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaXsoRgAKCRCPgPtYfRL+ TrEtB/43cGTGMsv1ehyCfr3UQNIHJGYF0DgcvJGikqxZCV399Pw4T32bBdQbUqXpb1C+SvqI6Cn borZCy4lDmf0JZo4BcnSrt2HJXebmZz8x03lL8uWNBV87ahrNaICiJvDft4pTyUY+iOEkh/N3mL fJlZ2sDnE6KUU7FMZ2qP7CQa7h3TGWuay6C7fgqLcd50IkVtb6QuIGzvZZU/r70AbPIcGI0niH/ wLzHnCpcS7zG35geC1JTsaMyzU1O2slx9i1i9SM5qtRjeZFqD4cJB/7I7kghKouv+3+VQwFY4k2 X3cjcI6SnLqwVstDjNtgvEcP3w/EQUrMpJ8bT2a8ZCrTski4
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Sakari's signing subkey expired in October last year. Drop it from the
descriptive header in the key file.
---
Hello,

this change is not very important to be applied to the pgpkeys repo, but
serves mainly as notification to Sakari.

@Sakari: If you don't need your certificate in the kernel pgpkeys repo any
more, please tell us. Otherwise you might want to extend the validity of
your subkey or create a new one.

There are a few valid signatures done by the key BF53AD52308AD4EC in the
keyring, but none of them is essential for the WoT of other certificates
in the repo. There is currently one active path for Mika Westerberg, but
it can be replaced by another one of the same length.

Best regards
Uwe

 keys/BF53AD52308AD4EC.asc | 2 --
 1 file changed, 2 deletions(-)

diff --git a/keys/BF53AD52308AD4EC.asc b/keys/BF53AD52308AD4EC.asc
index fd2f2c79aa44..c28f9e39b43f 100644
--- a/keys/BF53AD52308AD4EC.asc
+++ b/keys/BF53AD52308AD4EC.asc
@@ -1,8 +1,6 @@
 pub   dsa3072 2011-10-18 [SC] [expires: 2030-08-22]
       270CDCD35B9D7E26C2D72097BF53AD52308AD4EC
 uid                      Sakari Ailus <sakari.ailus@iki.fi>
-sub   dsa3072 2017-11-01 [S] [expires: 2025-10-30]
-      C4E18128781ECBCFBCEC07AA7C0476FFD34F87C5
 
 -----BEGIN PGP PUBLIC KEY BLOCK-----
 
-- 
2.47.3

