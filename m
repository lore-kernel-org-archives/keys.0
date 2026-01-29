Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C75EEAE7
	for <keys@linux.kernel.org>; Thu, 29 Jan 2026 09:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769680090; cv=none; b=LnKsNPiHNyftpwltAFa2caqrtycPZhjixLf85gCuSy/ZHqYwsDj2KhIpzhsjmiEtGOP/tHm2wFxSfxPAKHJEsEO7Vs8ijhUupQmHAe0wCHP1Dr+GhVVesoVYInOBzlPDOcdpd629fQ6YlvKAUcf8M46Uk0gZJLvq+HYgWGSztkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769680090; c=relaxed/simple;
	bh=qq9or99pJIEwAm8moQ174Lk44KZCGFyw+fl6hgIO32w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=OnLKoJ6ENfFcBiqe3uXPki8ftdif0DYkDRcDsig/4qSAMYaaGpHzNhevc118/tEJk0lqcYdfqWyHk7VHXwWHxaMjNKRXYi1vizPiIJO6c0H+Sdg1/sEXvs+4ga9Dv28A45aToKlTk5xoFOy34Gm/r4EooiVTwx0SWzpgHR6PdU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XpHpcJQV; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XpHpcJQV"
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-4359249bbacso1226776f8f.0
        for <keys@linux.kernel.org>; Thu, 29 Jan 2026 01:48:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769680086; x=1770284886; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jjh8j2zhJA7ZId155p5IpGMzvY3NpugrVoCdbCQjAxY=;
        b=XpHpcJQVfzyfC+DM9u7OMTPAOrNs/EaeNn8Fd+KYl0o5Ibved3GcVRLeI6pU5CcoBd
         7yN5MJT1fpd/EGtLffWQ2X5eJIrx8gvvgummwNvWH8u+RVVBBfPqolEProSmbLmqpt2o
         oWKUAgseCU63ulOptb0/+v0A+6NLsVoBR7HSe7pm+sBByE7HTNJL8gyeVVxg8G62l/eT
         N0TsURqzbo3sWVmrGPDy43bDWbCKEzbAIIdxFVr64/ovnP2niKCSNh0I+b2ub64ie42k
         NUGHy1XWPibLEaYEvZOxfooAoHKpSvnfHjdvpEFRnrihgZqaJvWIL88oIq/rzkjB9yUv
         wdng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769680086; x=1770284886;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jjh8j2zhJA7ZId155p5IpGMzvY3NpugrVoCdbCQjAxY=;
        b=JMgGKcA542b1ZCLsTqtrENPo/fW2bmcnQjG54bzv33g1j0Xx1Tg1LhJZ6oItgoYK66
         PdnzDlmeGjmGO+522QEXNID80QMlglgznAviO884GDQ3ancmFqLepw3E2inDDjsIuQxz
         MhipHymTCWzSR8tKFkYGjiJSSvEKkYsY4JtaM5re5fr3m5fuX+7kHp5e3JtrvIzk80xq
         Vd6OEQhxHBPkZ4dbikTThApb4NGhJg6z1qUXw6xLNV7nMKrymJfJjE10pIl7CCiGM76I
         Xzdsz1vkjCpHKUrzQDPw/VDLJzPRFnBnMSz1uORx8LYyNZg50QgwIFHSif7XM0SugZ7N
         umGQ==
X-Gm-Message-State: AOJu0Yw5AdbC1dwaHoTKtwtpkGRKZHw1bD5dCJOBlFiOjBKRkUywgBEq
	x1k+zgrI2QQiIvLn6qc14vkdAKha2Un8f7tKHWB9HGSfKWE7xc1sKxYikCYwYtgGW24=
X-Gm-Gg: AZuq6aICMhk+xUP6z8dyuqZ9LUttmucfyhSf5jq/EXgiMWqYqWkX7L6kKgg/r+9AE5A
	nj5tIt1H0Jr8CnTttKn/u/3TxD8pBj+z5nZjTWnGDIias467d8RXCbgRjXOSfa12bJk463rOdMT
	2dwQLkqvoW32KCUt+FCBtPjRDPFtzcfxFin2jnRt2lUUT4eQ7b/S4II+BDVM9vlHv2Fgz1u80s7
	w8PWRs4wQ9qyB0LGDuw3TluZ1sF5i1kXR85xoDI+aOv33Mg/Bs9wcqb/kbPK8r9sdSRapY7zYNT
	SuBfG2oueKNFeKuVuocUMsPKWKlt0RW48vQaGkRNHwVpCS4lLdjBmMNUQ7TyDiT4F/6YsMTECpg
	QQaL/3zIqygp1a5fWtYPpSPNRXRgWfezvvraa0yI+cYVT1fBmlQuMssaMtqQHtuEH1Nv3p6HIjQ
	6Xhvp/NcqKvFMzTI+q2+vEDQ988Y5j4uJoMQrjnnwsmb2wd3CQ2ToNX52P5xD2Zq4Bny6jtyBbz
	xg=
X-Received: by 2002:a5d:5d86:0:b0:432:c03e:a78e with SMTP id ffacd0b85a97d-435ea220d54mr3309586f8f.27.1769680085988;
        Thu, 29 Jan 2026 01:48:05 -0800 (PST)
Received: from localhost (p200300f65f20eb04703f3ea9880728e0.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:703f:3ea9:8807:28e0])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-435e1322eefsm13347313f8f.30.2026.01.29.01.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 01:48:05 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: =?UTF-8?q?Michal=20Koutn=C3=BD?= <mkoutny@suse.com>
Cc: keys@linux.kernel.org
Subject: [PATCH] =?UTF-8?q?Drop=20expired=20subkey=20from=20description=20?= =?UTF-8?q?of=20CFDED9A2FD1314F0=20(Michal=20Koutn=C3=BD)?=
Date: Thu, 29 Jan 2026 10:48:02 +0100
Message-ID: <20260129094802.947558-2-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Michal's signing subkey expired in June last year. Drop it from the
descriptive header in the key file.
---
Hello,

this change is not very important to be applied to the pgpkeys repo, but
serves mainly as notification to Michal.

@Michal: If you don't need your certificate in the kernel pgpkeys repo
any more, please tell us. Otherwise you might want to extend the
validity of your subkey or create a new one.

Extending the validity can be done using:

	gpg --quick-set-expire 47DE106A4B860621B0D6E63DD8CF730A95E2521C 2y DDEA67C5D8F6C4667A5DA0092DDD69DECBBEC149

(I think). After doing that please upload the key to a keyserver and/or
send it to the keys@linux.kernel.org list. Don't hesitate to ask if
something is unclear.

There are no signatures by Michal's key tracked in the pgpkeys repo, so
if we drop the cert it doesn't affect others's trust paths.

Best regards
Uwe

PS: Maybe the patch doesn't apply properly because this patch
description is written in UTF-8, but the file to patch is latin1
encoded. But maybe this only gives this mail a bad spam score ...
Also this prevented my to sign this patch, because patatt died on it :-\

 keys/CFDED9A2FD1314F0.asc | 2 --
 1 file changed, 2 deletions(-)

diff --git a/keys/CFDED9A2FD1314F0.asc b/keys/CFDED9A2FD1314F0.asc
index 1d3fbebb9f59..3c35d423ac10 100644
--- a/keys/CFDED9A2FD1314F0.asc
+++ b/keys/CFDED9A2FD1314F0.asc
@@ -3,8 +3,6 @@ pub   rsa4096 2017-08-23 [SC]
 uid                      Michal Koutný <mkoutny@suse.com>
 sub   ed25519 2023-01-13 [A]
       47DE106A4B860621B0D6E63DD8CF730A95E2521C
-sub   ed25519 2024-06-18 [S] [expires: 2025-06-18]
-      DDEA67C5D8F6C4667A5DA0092DDD69DECBBEC149
 
 -----BEGIN PGP PUBLIC KEY BLOCK-----
 
-- 
2.47.3

