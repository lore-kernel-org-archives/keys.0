Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D051329D273
	for <keys@linux.kernel.org>; Wed, 28 Jan 2026 10:56:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769597801; cv=none; b=te09PBUftihSuNogVMx4ZxiNFH9m6QfbA0/TbAWliS8tuGASD/Ow+K2kO5eaC43zYwB8F+fdSlxhFxHIYGTSsugCay0oHKHFCPLUX3X8FTBvxRdpHoSmzZmHaYoS0RXgFL/l07lpYqjaN8MBYYcZfEy4beO2S+Cr4HpBnqX+gdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769597801; c=relaxed/simple;
	bh=u5Bo4ZrWXTy7gfySIyD9wCq/PAZeWELGlh2QyK9xlH0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jNTKdFW0nnILlh/MCKuaFN5m/JrlwuElMAhprou7w4lDyFQAfFB4xNC3rqvglWT+/Jj8gu4q8cLBGc749D/xFXgujueMZomzyzJ36GTIVvSkfmAQP+IHbY8TsJlW56owoJ9rKpOVDamak2+YOLnMEAduFuu03ER38dzzdT8aeUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LypQA0Ms; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LypQA0Ms"
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-432d2c7a8b9so6426363f8f.2
        for <keys@linux.kernel.org>; Wed, 28 Jan 2026 02:56:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769597796; x=1770202596; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TtRE19zktNR7QmSdF1F4nwa98Ht6Fx9R+GLjCGWrDoQ=;
        b=LypQA0MsMIp3gRHEW4XEyfxXc3JLZOEijMH45eWzEPlfXuuVeZtjfvF2jp0X7hGhyg
         mzeti8mnhG2DwNU+kUeoSuW/2lzb+ss6xUNq37aOvUEqoSE991Kv+oNfboH80Oh264xP
         bI00z+1Ti7t5C0dtBmn1CBUsvpNDp+FXpHS3cpp517ldxkoMrKyhGFm0v36V9962/E8N
         zAdQST/izekWoRHVpF0QI7As9mTKDeSpeLZyVMl3eJIlci26FFMBaTKbGxHkkkieIrY+
         bkikyVNvQRWWHKyEx5gdD5hNHwJQTpl8H3IUuf8RLVZtt6Vn40gtqFP+6py1grdNY3Z4
         qhPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769597796; x=1770202596;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TtRE19zktNR7QmSdF1F4nwa98Ht6Fx9R+GLjCGWrDoQ=;
        b=QbYzA+yViUNJhqj9IGuN6EQHQ7R+u8rXyR7ePxSq7msGHPob8dWF8qLLIF3Ck1WjBT
         fViK4Fkb8IYMcOumeNXNdJLqccihmJGuhlPwIp6xuLEFWfFRPXyQAxD2SoqL03gkgoDQ
         yUR5gHf7YSvleVOsxr737HUi4vxAwbwJWK6yGRpYVRrQUyU94GyZlEJWkKRFaHh+IqBB
         xkSWTSgOlxVCejWR3hYn33agF9ogUN5sNCj0IeB3lXL21sOeYKYLtgbhmdZn7k1eWKJa
         MN9aFImToCnYwae6/igsShFCVfDA1pfOeA/tTDU3AYE32M/fVawjxKweo+IBdYDkG9fw
         4MuA==
X-Gm-Message-State: AOJu0YzNULkVV7FvdB0Kt315SnvjF9MCvBDAE4t66KLwhK80ZzeyQDbJ
	RT49i8TSuN96UiBp8gkWKRgXoYo+RxQ4vrbI605C4L1z5wyVOTaQGfr+yHkVUZ9vEKFsYelmhGo
	rOjoB
X-Gm-Gg: AZuq6aKsqN+eQ2P74BxD9DOa/X5OpXAhIADdoSg2m2CrLyRR1KMrtFZ2p4VerQcw76i
	5tRqNb2XIXeRNdj+bet+j99SjEHoMFiCZ8imNNHj/OFNN1323UWCikhsao9nyi9gjNxz80Bm2Wv
	HwV6/ng65R9lMyTCxS3ToM4B7kzfnaUp4tIdbUWGiTnP5StTTXAp6ZeeME1GVSmokso7jXfn1Qo
	mJy6TtgW5ypgjLkASxtGRFCHnQ5672C4NCjmLsFGTWpMIcxIHmZTFmscpVXxsXIiioMoA54jPdC
	2BgYWA/2vQJLJF2b52JbCcuj5nh3UOMICoWiZGsoX3oYFZjx0J1Pdd0MOUfdS+3a/FQLkrUgR2b
	Pt8Pyd/Ck2ikMDusC5ZExd9GLpLZU08U/78mPW6LYkLXtBXuzlD9Yp+138p9/4BZwY/GPs8XUmI
	ZFfypvnoKY2ZzxdQDjpaGFhq/JQSDuiYONqPQLRlOwyqvxFn3BlsCW20Cas8LRgfLfOTw2kJWCQ
	vU=
X-Received: by 2002:a05:6000:258a:b0:435:a3c5:a528 with SMTP id ffacd0b85a97d-435dd0b126amr7510128f8f.39.1769597795938;
        Wed, 28 Jan 2026 02:56:35 -0800 (PST)
Received: from localhost (p200300f65f20eb04ec64edaa11fa35f3.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:ec64:edaa:11fa:35f3])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-435e132303fsm5770309f8f.36.2026.01.28.02.56.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 02:56:35 -0800 (PST)
Date: Wed, 28 Jan 2026 11:56:34 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>
Subject: Update of James Bottemley's key in the kernel PGP keyring
Message-ID: <6gt2aiuqqgevlh5p4ggzahfhruciee4o57npoeadhqff7pqsp2@zsxiyjfetg4p>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="drqsmr4ck7krm22m"
Content-Disposition: inline


--drqsmr4ck7krm22m
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Update of James Bottemley's key in the kernel PGP keyring
MIME-Version: 1.0

Hello,

recently (2026-01-16) the subkeys (as tracked in the kernel pgpkeys
repo) of James Bottomley's key expired. He updated the expiry date,
however adding the updated key to the keyring brings some trouble to the
WoT as an update drops SHA1 protected signatures which (among others)
loses the direct signature from Linus to James.

However nobody falls out of the WoT by this, so I suggest to import the
changes without restoring the SHA1 stuff.

James' key is in DNS, so an update works as follows:

	gpg --locate-external-key --auto-key-locate clear,dane James.Bottomley@hansenpartnership.com
	gpg --export D5606E73C8B46271BEAD9ADF814AE47C214854D6 > /tmp/jbkey
	korg-update-pgpkeys /tmp/jbkey

Best regards
Uwe

--drqsmr4ck7krm22m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAml5618ACgkQj4D7WH0S
/k7EZAf/eo/86NQoRne48DASYLLtgN4SrB8FchPe5DHtek9NZQNDkaQQ3/j+bEyZ
2WAZxm9NIpEDcBeSOTPEc7gsZbNun5x1PBchceLjFosG93K6I/6uv6YXiAda+Pqr
heVCxq3un3Nyz3z3wLKVMSA6UY0IsVAgHL0hrOM6fLjNrAjx5ep1XXH2T/qu9kLK
qa+CiHS9GGSHiQemDOFp005TR4zV7KQBXAzsuLoHc6N7AsLzeu9Deds6KVeJ0IJc
+RIsjSp06Nv0w9A/cGmrJ3SjInV7Nj0Ig6uBJllejxZ1saA1s2wOPOQ1U3KkKThB
XSHYO+rpRqBvKy+urg+sqRlitOo5oA==
=ltMZ
-----END PGP SIGNATURE-----

--drqsmr4ck7krm22m--
