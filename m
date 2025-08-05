Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724AE1EDA1B
	for <keys@linux.kernel.org>; Tue,  5 Aug 2025 07:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754380774; cv=none; b=obMzJCW1Jwpk+SgzXiSuoy3/WjdLkntNMZmEvnABNTWHrayXk2eHKaV2PWb4c1iqk6sYWOCwM3BRPM90pNAXW732J6QQFVanUIQRH01gYPsHHoFyec+2I8uWQEr3tfxfa3T1LxSXQU5jyDFZlOI28i08eVqVdfLYuPIk2/sD24Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754380774; c=relaxed/simple;
	bh=762IwfteKUyj0xKhWJ1WmLfCZaiYBfaT1B2qmpmrZO8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=K4kCoSf0d2LqF/L3CY0sfAzlv1BK44n5H84LAeLvcXbD9iMqIELmXe9QfkxDcLXLxslKOpANn39mO+4CbHXgwWOeQkujarosd/7aNf0d13wRWUzEjrY+xvh7esN/l9x9WHrV76FLyZHm5ULqFqak1lkSFmqc5HhQyavA4cSdBSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YE01pZty; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YE01pZty"
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-af66f444488so743983066b.0
        for <keys@linux.kernel.org>; Tue, 05 Aug 2025 00:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754380769; x=1754985569; darn=linux.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=afR4PIYGbBONSMyDZ9va6Xsw+TjcUOoJnVGyDT2S1Ks=;
        b=YE01pZtyIbe8E/sWgeqHRkFK1oo11sLAvR4zwYg/YdVpqNw/qZ/6aZIcTGmekDQCCF
         omH9JhoOTzetjoKaseor3gbjAgrSY1rv0ZTPxaO3CWrje5pcCPIMe3mauDebpwP38GzI
         RqFX1gfoWqBadfYQplLDlI7vWKQUMt3/4tPyhohkWo3h5OKAgIrT5o4sGssTraeWdhxV
         aninGldk9r9aan8+ZNjvfdadyklKPOFsLgpfZtQRWx0ZwX6cqczLqNsPMGTxYQ876N3M
         MTgNS/aTmxn2JNlMSNmj4MPO/E0akLMHHgVQFmdVIA4WYV9vEGC1DM+VghDB9ul9/9vf
         Ml+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754380769; x=1754985569;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=afR4PIYGbBONSMyDZ9va6Xsw+TjcUOoJnVGyDT2S1Ks=;
        b=gr/fhp9/tnRRCckDxU1asEYR8B2IK4CBaHzOhugkLEic7vvtw2BMytZHHLllTPijpw
         EjYVTccUbC6CUj+1VCIZKYS9HhHNp9C3CNy+jecwLChFSyBG/+OFbA7tFImyeZHX7Iy/
         uzf9fQXxcbF8C1aivpxflAhdDnvccfKiKO23quGoziwtUKVKSpfA2+vkAzQS1AXjB49l
         MVAghzbpn/vUVs0fvfcHK5NUfZN+g5HbWYd/Zz3G10F23pINg4/ZiVMUz+BQ5ciTyjcn
         lkcdO/GbZ10zYT3NkesRH71ua/CBAH8zooPIf0U0bgKIjV/6EibB3iBv2rg7cC7EBcxb
         3Dzg==
X-Gm-Message-State: AOJu0Yz+bdXr6/7N/5dImlsTsSmriMS7fAFgfogu39avmNyQZOclkJYg
	erKQWrdwlK6LSGn8uRYWIT5NGi5avCnGHX0owu/Hpa2PexFPJS1IRPooYZ0IzXsmFET3j9mfBLW
	JONm9
X-Gm-Gg: ASbGnctydI9V1BVBODvq45DM03c+OfjU8uvUv/CV8jbGzvK+WhI2tluXS5rbbPVUmVI
	5uMKgOyLUoMQzReTOEuvcDtkUaHt/79aVrdqgjF7N9zALsKnrKr+Y54+6Q2zQd2JljevmqNRm5s
	7ny8dNKuDQEyKSkflGeUCz8ACkk3H2WNCW+dq66bWUwfQNCpsHZicSwQj2lC64btj3DGFyoA1j9
	9qKiFI7RXk9llTfPNOH440rg7GKpLPJ+xbvkyoa2Pr4Dt7zeFBSefJp975xZVHDrqc7GNIUJrRA
	vHBYXVR5aqZ5ci2mBueFKqc6swdCg5yqA1EiigarBBtE2jnglOvwvJbU8kfI2AJiOYKGoF6my/2
	WZew3uNgk01QPk9Si6gLhQ3a8CRx9WHMkZ2rDpg==
X-Google-Smtp-Source: AGHT+IHjLd3VfmrtQPDxU+fNb8VMCZ33QLktj2ZBddBXVAXoSBuTT6u7y5dKyu63i7t1uHD35BeXhw==
X-Received: by 2002:a17:907:7f05:b0:ae3:f16e:4863 with SMTP id a640c23a62f3a-af93ffc1345mr1227396166b.1.1754380769449;
        Tue, 05 Aug 2025 00:59:29 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-af91a0a3149sm859176166b.38.2025.08.05.00.59.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 00:59:28 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Cc: Kieran Bingham <kieranbingham@gmail.com>,
	Kieran Bingham <kieran@bingham.xyz>,
	Kieran Bingham <kieran@kbingham.co.uk>,
	Imre Kaloz <kaloz@dune.hu>,
	Imre Kaloz <kaloz@openwrt.org>,
	Eric Dumazet <edumazet@google.com>,
	Eric Dumazet <eric.dumazet@gmail.com>,
	Eric Dumazet <edumazet@kernel.org>,
	Pravin B Shelar <pshelar@nicira.com>,
	Allison Henderson <allison.henderson@oracle.com>,
	Joel Granados <joel.granados@kernel.org>,
	Joel Granados <joel.granados@joelgranados.com>,
	Joel Granados <j.granados@samsung.com>,
	Harald Hoyer <harald@hoyer.xyz>,
	Harald Hoyer <harald@harald-hoyer.de>,
	Harald Hoyer <harald@redhat.com>,
	Bothersome Borer <bothersome-borer@kernel.org>,
	Confounding Cockroach <confounding-cockroach@kernel.org>,
	Frank Rowand <frank.rowand@sony.com>,
	Frank Rowand <key_111017@frowand.com>,
	Frank Rowand <frank.rowand@am.sony.com>,
	Frank Rowand <frowand@gmail.com>,
	Frank Rowand <frank.rowand@sonymobile.com>,
	Frank Rowand <frowand.list@gmail.com>,
	Frank Rowand <frank@frowand.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Jacek Anaszewski <j.anaszewski@samsung.com>,
	Aggravating Aphid <aggravating-aphid@kernel.org>
Subject: [PATCH 0/7] Remove expired keys, 2024 edition
Date: Tue,  5 Aug 2025 09:59:01 +0200
Message-ID: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3358; i=u.kleine-koenig@baylibre.com; h=from:subject:message-id; bh=762IwfteKUyj0xKhWJ1WmLfCZaiYBfaT1B2qmpmrZO8=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBokbnFc+CVuVM/ZjIwsiadnUpK6cfqXH7YDfNT+ Pg4Sn0ULXyJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCaJG5xQAKCRCPgPtYfRL+ Tu3iB/wJCmojA3aNkUSBSS/xCL1ET/kRFUP5m1v74fuJv+4jlCXmMMsJ0ZR43ABFh5hIv9fUnA4 /sYUPFYz3FkIr77ufb8/gOsfeM468hMlnBgQdkW59Vi0hozUZzwyri2hSwQQVhYQFSyLxz/3+sU PiYLvG5SzkeeQ1MlmCoXMLDwpgHr5MRvtB8gcWxqBO6nWfiFY6p6sV7JT0qnPDS8oS57zSptjsE p01cdiz1gN7ny/E3uFgbbc8aRNK+SFqKGLP8sRzgf8bv7rqk3O+bejO1ofBrI4TmGACsKnCrTQX ela+TPCy3ahYu3lB91a4Go9SDIoZ0BNUiftnp7281ALhByGP
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

Hello,

this cleanup series removes 5 keys and one subkey that expired in 2024.
Also a key that was revoked in 2020 is dropped.

None of the removed keys is part of trust paths to other keys, so there
is no effect on the remaining keys.

I suggest to not apply this series straight away to give the affected
owners the chance to extend the expiry date of their keys and replace
them accordingly.

A bit orthogonal to this series: It is usually recommended to have an
expiry date on PGP keys. Most keys (472 of now 620) don't have an expiry
date, I wonder if that would be sensible to require at least for new
keys added to the keyring. The upside would be that we don't trust keys
that are already long abondoned. E.g. Gentoo requires that for the keys
that are relevant for the project[1].

Currently there are 5 more keys contained in the keyring that expired in
2025:

0AA04DC735ACE2B5.asc
	Bothersome Borer <bothersome-borer@kernel.org>
4C3262CBD285EB87.asc
	Confounding Cockroach <confounding-cockroach@kernel.org>
A16F9AB80CB2D395.asc
	Frank Rowand <frank.rowand@sony.com>
	Frank Rowand <key_111017@frowand.com>
	Frank Rowand <frank.rowand@am.sony.com>
	Frank Rowand <frowand@gmail.com>
	Frank Rowand <frank.rowand@sonymobile.com>
	Frank Rowand <frowand.list@gmail.com>
	Frank Rowand <frank@frowand.com>
BD6A501CB78B7C26.asc
	Jacek Anaszewski <jacek.anaszewski@gmail.com>
	Jacek Anaszewski <j.anaszewski@samsung.com>
E7F85821938ABF6F.asc
	Aggravating Aphid <aggravating-aphid@kernel.org>

These are the only keys left that (obviously) don't have a valid trust
path from Linus' key.

Best regards
Uwe

[1] https://www.gentoo.org/glep/glep-0063.html

Uwe Kleine-König (7):
  Remove expired key of Kieran Bingham
  Remove expired key of Imre Kaloz
  Remove expired key of Eric Dumazet
  Remove expired key of Pravin B Shelar
  Remove expired key of Allison Henderson
  Remove expired signing subkey of Joel Granados
  Remove revoked key of Harald Hoyer

 graphs/034EB370014DF270.svg |  85 -------
 graphs/23863DC3831DB2B1.svg |  96 --------
 graphs/2BE25AAE87E87347.svg | 136 -----------
 graphs/70AA62F3B95C551B.svg | 153 ------------
 graphs/C07AE44466FB6D66.svg | 119 ---------
 graphs/C83EA4603047E9B3.svg | 136 -----------
 keys/034EB370014DF270.asc   | 473 ------------------------------------
 keys/23863DC3831DB2B1.asc   | 345 --------------------------
 keys/2BE25AAE87E87347.asc   | 136 -----------
 keys/5895FAAC338C6E77.asc   |  40 +--
 keys/70AA62F3B95C551B.asc   | 169 -------------
 keys/C07AE44466FB6D66.asc   |  79 ------
 keys/C83EA4603047E9B3.asc   |  71 ------
 13 files changed, 2 insertions(+), 2036 deletions(-)
 delete mode 100644 graphs/034EB370014DF270.svg
 delete mode 100644 graphs/23863DC3831DB2B1.svg
 delete mode 100644 graphs/2BE25AAE87E87347.svg
 delete mode 100644 graphs/70AA62F3B95C551B.svg
 delete mode 100644 graphs/C07AE44466FB6D66.svg
 delete mode 100644 graphs/C83EA4603047E9B3.svg
 delete mode 100644 keys/034EB370014DF270.asc
 delete mode 100644 keys/23863DC3831DB2B1.asc
 delete mode 100644 keys/2BE25AAE87E87347.asc
 delete mode 100644 keys/70AA62F3B95C551B.asc
 delete mode 100644 keys/C07AE44466FB6D66.asc
 delete mode 100644 keys/C83EA4603047E9B3.asc


base-commit: e92648c015a4d9f92cff07dce67648c11d4a7832
-- 
2.50.1

