Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D902937A486
	for <keys@linux.kernel.org>; Thu, 29 Jan 2026 07:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769672511; cv=none; b=iBfSL7Mfy8N6aDRQE3A4kdYNxhXGLJL2beoZDCvbb3wxX1Jzh0uu/RN72xSZujZ0z1Tp8KTCtGNCgPLzrB4OrAfzYYHsCyypy71NAStp64U2DAr6vZubcYzSl0fKorkTsmexUH7oqtaqNDXHt+BITJQU9JQPOx0OUkB9CaKTF9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769672511; c=relaxed/simple;
	bh=xqMrpqD/t6bnSUYbMS8DPA5gf3aW9Uk5U31374D24KA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=I9gjwZqNwfxAW8Rs/4yDOQj8U/DakFpYfHCMaA3a6L+m5gXDwklCtxtgEd7+3xGB5buWBi1+Y4DzS1qGchB8Vx/BFot8+IHPXoc/kjkV1pIF1p0DRhBFkHgRLv93uy+/uKmQ56+Av9mJNqkzNCuajX1MLczdvcS3HSrRFQs5+q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=c5fmgxIk; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="c5fmgxIk"
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4806f9e61f9so3121555e9.1
        for <keys@linux.kernel.org>; Wed, 28 Jan 2026 23:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769672507; x=1770277307; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JZiqaYPMI+4eUqCwBDOwr8cHf0l6ATWiBrKueVURxP0=;
        b=c5fmgxIk3mf5TvJ6MATDMQBHYkkq3btaV+qEhQf1qB9WphhAU6g0zfZjpnOV5HpS9E
         GgM5JLaeo7mXC6iOLbA81EU9Gy/5mDvfS1Uk4Ddx2L9BJyNK/6qoGhARb6IgYm6LMDJQ
         BNfn8IjSQgT5Fn0b6OsqWtqJZD2gW2OshdJPPFL++waGPEjuy0di2FghP15ke6N3qNP6
         VfRBfq/8+gap8ChPTTAhli6lHkTrcZrziIaUNg5zZYnpZXZZDS2b/Y6n3RtdvythuLTM
         oaYDiXJbCH+tZrIbmGoz5guNFcEaQanBmLf49T4m5OG/or99PDz9P4SofyjNfK5dXWz4
         3F4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769672507; x=1770277307;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JZiqaYPMI+4eUqCwBDOwr8cHf0l6ATWiBrKueVURxP0=;
        b=SlsBuBWr3L4nmI5iVPvxZYSpF9oqZ59bOMmJVFdkvF0CGBsb1JD+tUVMerplTn/7iV
         5NlyUWzmtepiU84YSsVjzI51BvquWMI7aKoVrOaMRUv5k7wNjtAanMr9kDqvKUNsIOWe
         KOuzlBguu3F82EnTAqcUU10FIqj8+3D+IacDRaNf2hR1nBD0U66Ot4TzEUyHI78CpIrg
         tK9FGUmqDCTHBXCwt+EHpBSfboY0Qw3QFKVlV4LM/1dFoQXEFvY7ab49qj8l+ar4tLd0
         8JbWMUVpbp6qRF9s+nBOG595uO3R07GZFvQU2YL+LoIyy1IO8c/4t2Jyc6c2m8NTyGo6
         G+Ig==
X-Gm-Message-State: AOJu0Yz8x0/t+nlLpMfUYeGx8PgSPlJu20y5keinwBMav/+XPDL5JmwY
	HzJIUMiSa5lrBQF0QzmUKrHrm5FfZjYKBIRYgfrD9MJN1aB76QNjLq+7FgCMa5h5pTg=
X-Gm-Gg: AZuq6aIIbTW3I26lFIB6Y4x9yZFcj2sLjMO/59eqt0FyfKxA3Jjb3DefwD5wvhqKdL8
	bUVCHYQydvqI7R38gK2PHGBwdovGlxvnK/N709YzTZMQ7TQ/wnC0iBDlHmk35fbAys2zcvYwDmp
	bXNS8Mbml26Nbf1RqpJpDq0N1f/6TeP25xGO+UFVFuWt9Moa/BWZNC9ETfmrTTH4gSVlbchtDhm
	j2gehWYlW/U/8rjm6rIsLpn8+ozKTEx9oa497oiYc3ANaEgJOchDC8XZ4DSrajxO4YeSyb5LZJb
	fnUa6xcgkSEA/moCLy0aTc1uEDDl+hak8U7ohvzFkJFzrMVb5mmgWgBQ0++kgJlWTy9vFG8iMxg
	rFwUMz/3+PAVlQnUgWOc9UFrZnY8mS2UaG/RApLIB3CvCrSzhkxC6I81Uwwlbzuem1skvYoCrc7
	1SUB2ei/3zQOvdFpff
X-Received: by 2002:a05:600c:a40e:b0:480:6ab1:ed0d with SMTP id 5b1f17b1804b1-4806ab1f166mr83989285e9.9.1769672507037;
        Wed, 28 Jan 2026 23:41:47 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-48066c37420sm193912615e9.9.2026.01.28.23.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 23:41:46 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Mike Frysinger <vapier@gentoo.org>,
	Mike Frysinger <vapier@gmail.com>,
	Mike Frysinger <vapier@chromium.org>
Cc: keys@linux.kernel.org
Subject: [PATCH] Drop expired subkey from description of 41633B9FE837F581 (Mike Frysinger)
Date: Thu, 29 Jan 2026 08:41:37 +0100
Message-ID: <20260129074139.933109-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1252; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=xqMrpqD/t6bnSUYbMS8DPA5gf3aW9Uk5U31374D24KA=; b=owGbwMvMwMXY3/A7olbonx/jabUkhsxqfuPewzOeZu/i/jEpwumGaQxn4fz78pemnfc8zPS13 HOdSoZLJ6MxCwMjF4OsmCKLfeOaTKsqucjOtf8uwwxiZQKZwsDFKQATkRfiYJjYkd/jwKHGFH52 l2BgUxnjqZ+JXfLBy4MaxBJky3r05LOmKZ/7xsD06q1+6s7J9jm/7OS/ME3oEW4JqT+eVesz8cy FG70N97XtmxZJf9bqWMl0Zd1HGaEXuZ/37KsrNwv+qb53nYZ5ocrbp2/iGb58UknvbRfiPHqztH D158iMY4J/0njnrX9Xd0Nw58e4tbPCda9tOCmo6pT+z5s/Ojv8o7DT9ZeMMT0Cm9fVlW99H5drd /20Fb/SxCUs27r/M23kiHgwpXD9oX7144m/xfz67/aVfU/S3KkqddZJSLfaaGdsQ36NaqpWy/wn emXT7s/4H7RLJ9p5qswcGe/X7qvCD2SIpx884b/W6HgMAA==
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Mike's signing subkey expired in October last year. Drop it from the
descriptive header in the key file.
---
Hello,

this change is not very important to be applied to the pgpkeys repo, but
serves mainly as notification to Mike.

@Mike: If you don't need your certificate in the kernel pgpkeys repo any
more, please tell us. Otherwise you might want to extend the validity of
your subkey or create a new one.

There are no signatures by Mike's key tracked in the pgpkeys repo, so
dropping the cert doesn't affect others's trust paths.

Best regards
Uwe

 keys/41633B9FE837F581.asc | 2 --
 1 file changed, 2 deletions(-)

diff --git a/keys/41633B9FE837F581.asc b/keys/41633B9FE837F581.asc
index 7c2f3ce41502..57b6a095e896 100644
--- a/keys/41633B9FE837F581.asc
+++ b/keys/41633B9FE837F581.asc
@@ -3,8 +3,6 @@ pub   rsa4096 2002-11-17 [SCEA]
 uid                      Mike Frysinger <vapier@gentoo.org>
 uid                      Mike Frysinger (GMAIL) <vapier@gmail.com>
 uid                      Mike Frysinger (Open Source Chromium project) <vapier@chromium.org>
-sub   rsa3072 2023-10-13 [S] [expires: 2025-10-12]
-      7E32E7FAECB01764574695DDC93680A844B4E8C9
 
 -----BEGIN PGP PUBLIC KEY BLOCK-----
 
-- 
2.47.3

