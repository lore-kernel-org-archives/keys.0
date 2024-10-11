Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 918E42581
	for <keys@linux.kernel.org>; Fri, 11 Oct 2024 06:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728627939; cv=none; b=pE6gfTtN4R5hjG5QKC1ertQkZ6clIWJyTGDamOQiD8Mo25EaXPvvYYKW1oSZXAvrQOwXzmOnBGTO9Hoymw385zifJLWToroFziogu/xYy7nOdKNyDpDPuq2chspGP2+ANDS9WxtYRncEVsMcZBNyk12sRdULnrR7KJvS+iutNSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728627939; c=relaxed/simple;
	bh=UeZWV1g2rutgG5xONm7Hbs35yEGTdoC3MxfGLzjdt/w=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=mfSiv+tVkJpBcl1W2tDX21Cj9wTxGDBeOrUF6dMccpVM7arrwAzGfVNV+Ylre4lFGQrgd36Db7MnbbT7pDwlhKFodD3MKv05tf0zfql7m5f1AAYbxBTsp37yD83sJvZV8hE/u7WZCuy6i3Ly5TLkG8NRSTBXMB8q7NFEjPpfNgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JdODUoWt; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JdODUoWt"
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a994cd82a3bso233290766b.2
        for <keys@linux.kernel.org>; Thu, 10 Oct 2024 23:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728627935; x=1729232735; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wZvcJ62HeCyCgxYnRBGhHhbcM8JsokFtukLdhT4KPOc=;
        b=JdODUoWtsBQp4QtoN4Iyvx2YjpxK/8BgHTlxJB4DX2/YOvaU9qbsL8yoc8CMnoDmuB
         +jhhFiLWHkqRR2EaFw0bDYKt6UpMEGMkCs4an2ou0nrWeHWrO05ZXJSzXEK+4zNAtXYl
         84C6GkTq55/bnwL+PrNryKAO4XOTUPPP4TNXLrixl4HCLj7OOUkpPrR53Ua1pXRNL6cJ
         0LCQ7YrDF6JVPA7Kg5qGEQrdS+KfpRvIavRsOmrRzYolYg60W+9OYjj3FZwrPouLWAv2
         SVV6pcu1f8BxCkVdFQ1GOXNDrwUmrkgW4g6AIQDUeyS5nrH9PECZfSXKyVJ6IQYSQCfh
         AZOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728627935; x=1729232735;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wZvcJ62HeCyCgxYnRBGhHhbcM8JsokFtukLdhT4KPOc=;
        b=k5LouXHYf+ppnoYa0fM4C1Do20qgwTB1KmeAUCFm9q82H9GWCxAfWjbcLcXSHMhvHM
         GYW9Lzi4X0wokhU1YvBV7x54PJwmrzREZgJ7QMPz+DCS1zOyPJHTeva2QfqgKHGpg1gB
         zMAbTwzBWG+4vgE0zI7mD+vfr/aW2hICVLXkmKCmyuU2mKhJmDy0n3aYMsy8yjq3W7vB
         JD3o5rgLBpsKuOGLX+SMW1CSYUR32fyxl+qe9wrgxJM6UogInOBilvxSX3Dyh5NixHgp
         Z2/wWKhRl2B2Jx+/qmXCXweGV7a669h+eIPbrtDebkHZLtkAgAtk75xsuAK/AkDi/+jQ
         5zug==
X-Gm-Message-State: AOJu0YzwbkOCfkvEEQ+ESFmPn1+wNNQVBqWedrsJMag88HjYSixzkluW
	n/fOf2MH52zSzzg2+Ku3Kp49XBEWwaGJ4A1YLrojajGaSxqYhIhU8A1L8lwk5mmxc71i994+ikW
	K
X-Google-Smtp-Source: AGHT+IEr5DGO8Ke5kIYIchM2GtASVbwyFsrotfOnAefWtn5XBjXXCZ5fwzSCEgPDNxXVjoDWEjVXVA==
X-Received: by 2002:a17:907:86ab:b0:a99:7fdf:1b29 with SMTP id a640c23a62f3a-a99b942b5b9mr141452566b.25.1728627934904;
        Thu, 10 Oct 2024 23:25:34 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80c1b8asm174485066b.116.2024.10.10.23.25.34
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 23:25:34 -0700 (PDT)
Date: Fri, 11 Oct 2024 08:25:32 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Subject: About revoked uids in the kernel keyring repo
Message-ID: <kh5aupxlnhnszkhs44pworjawui6mhwck6zbhsh7wssbumdtq7@yexqh3pb5h5h>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="c77qtbkqn4xfxk5n"
Content-Disposition: inline


--c77qtbkqn4xfxk5n
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: About revoked uids in the kernel keyring repo
MIME-Version: 1.0

Hello,

some time ago I revoked one of the uids of my key. This revoked uid is
available on the ubuntu keyserver. Still after the last refresh from
keyserver.ubuntu.com (10e718223d7e ("Periodic update from keyservers"))
the uid is still tracked as ok:

	uwe@taurus:~/gsrc/kernel-pgpkeys$ gpg --no-default-keyring --keyring ./tes=
t --import keys/E2DCDD9132669BD6.asc
	gpg: keybox './test' created
	gpg: key E2DCDD9132669BD6: 16 signatures not checked due to missing keys
	gpg: key E2DCDD9132669BD6: public key "Uwe Kleine-K=F6nig <uwe@kleine-koen=
ig.org>" imported
	gpg: Total number processed: 1
	gpg:               imported: 1
	gpg: no ultimately trusted keys found
	uwe@taurus:~/gsrc/kernel-pgpkeys$ gpg --no-default-keyring --keyring ./tes=
t --with-colons --list-keys E2DCDD9132669BD6 | grep ^uid
	uid:-::::1717662465::FC9343E0A10E867989E995C04882884A8F364762::Uwe Kleine-=
K=F6nig <uwe@kleine-koenig.org>::::::::::0:
	uid:-::::1717662475::67B953CFC7FF21DC32EB0EC6D8F232796F0BA924::Uwe Kleine-=
K=F6nig <uwe@kleine-k=F6nig.de>::::::::::0:
	uid:-::::1717662474::43C4D0A27D6F8CE86F6B3B56F0A4F3BBA7964BA7::Uwe Kleine-=
K=F6nig <ukleinek@lug-freiburg.de>::::::::::0:
	uid:-::::1561292811::D92B739939E1CF6C8CAAF6351E1B26603D0BC9AA::Uwe Kleine-=
K=F6nig <u.kleine-koenig@pengutronix.de>::::::::::0:
	uid:-::::1717662474::D5D83017D782895C4A6CF8599F7080D6AC0BE40B::Uwe Kleine-=
K=F6nig <ukleinek@strlen.de>::::::::::0:
	uid:-::::1717662474::8C461F1AD85F1F20B672723D5B0A3E077F7E6F31::Uwe Kleine-=
K=F6nig <ukleinek@debian.org>::::::::::0:
	uid:-::::1717662475::194FB2A6001835954338E049FFFDB6AAE8DE8F9F::Uwe Kleine-=
K=F6nig <ukleinek@kernel.org>::::::::::0:
	uid:-::::1717662475::7E218F31504E286A852C2E05459BA0DC22FF34AE::Uwe Kleine-=
K=F6nig <u.kleine-koenig@baylibre.com>::::::::::0:

You see 8 valid uids. When I refresh that from the keyserver, the
@pengutronix.de uid is properly revoked:

	uwe@taurus:~/gsrc/kernel-pgpkeys$ gpg --no-default-keyring --keyring ./tes=
t --keyserver keyserver.ubuntu.com --refresh
	gpg: refreshing 1 key from hkp://keyserver.ubuntu.com
	gpg: key E2DCDD9132669BD6: 27 duplicate signatures removed
	gpg: key E2DCDD9132669BD6: "Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>" 26=
 new signatures
	gpg: Total number processed: 1
	gpg:         new signatures: 26
	uwe@taurus:~/gsrc/kernel-pgpkeys$ gpg --no-default-keyring --keyring ./tes=
t --with-colons --list-keys E2DCDD9132669BD6 | grep ^uid
	uid:-::::1717662465::FC9343E0A10E867989E995C04882884A8F364762::Uwe Kleine-=
K=F6nig <uwe@kleine-koenig.org>::::::::::0:
	uid:-::::1717662475::67B953CFC7FF21DC32EB0EC6D8F232796F0BA924::Uwe Kleine-=
K=F6nig <uwe@kleine-k=F6nig.de>::::::::::0:
	uid:-::::1717662474::43C4D0A27D6F8CE86F6B3B56F0A4F3BBA7964BA7::Uwe Kleine-=
K=F6nig <ukleinek@lug-freiburg.de>::::::::::0:
	uid:r::::::D92B739939E1CF6C8CAAF6351E1B26603D0BC9AA::Uwe Kleine-K=F6nig <u=
=2Ekleine-koenig@pengutronix.de>::::::::::0:
	uid:-::::1717662474::D5D83017D782895C4A6CF8599F7080D6AC0BE40B::Uwe Kleine-=
K=F6nig <ukleinek@strlen.de>::::::::::0:
	uid:-::::1717662474::8C461F1AD85F1F20B672723D5B0A3E077F7E6F31::Uwe Kleine-=
K=F6nig <ukleinek@debian.org>::::::::::0:
	uid:-::::1717662475::194FB2A6001835954338E049FFFDB6AAE8DE8F9F::Uwe Kleine-=
K=F6nig <ukleinek@kernel.org>::::::::::0:
	uid:-::::1717662475::7E218F31504E286A852C2E05459BA0DC22FF34AE::Uwe Kleine-=
K=F6nig <u.kleine-koenig@baylibre.com>::::::::::0:

Would be great to get that revokation into the keyring repo.

Best regards
Uwe

--c77qtbkqn4xfxk5n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcIxNoACgkQj4D7WH0S
/k77wwgAq0XoSkciSH0bQ5irC1r5HLX15m6Xt02UXeolRSwUXMIjUBMHhZSVfG8U
dRBLT2iDfs04k6Sjn6BZ2t1DSXQqbxbzfRdiWk7cBA+KWuDq+PmpV6MQA3fFsYLs
RnTeNctw7KBPN4qf0Gzleg44Sd/NnjssMSEmXM+YS8JK20hNC2ZIV4dr+BX0pwYF
wkHuQuYBO/AHGaI5ur9PMfDXxVpoMMfdLJRsFkl3Zr3Q+SIEDkZ7pVvhWEoVfh3E
OCR6Q4ZNxV/xA8DZLDZ8NmdWSL3zivrtoCiLausW6g37ypNLyCjv4NzERHxKpN9a
Y3Wejeeezv6S78xvvlKTII3pMuO82A==
=QyGq
-----END PGP SIGNATURE-----

--c77qtbkqn4xfxk5n--
