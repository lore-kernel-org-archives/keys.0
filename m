Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26BA3BADA2
	for <keys@linux.kernel.org>; Wed, 29 Jul 2026 09:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785316732; cv=none; b=s0heTT0XK4/o7zZ/JdB0BL/bE3PbQiYChXgv/BmOkSAlIVQC6uqBrLvJ73wz3JYqmtm/PwiuS6V8lUxTNZkI2N9NMCSR/0lL6B8VJ4uwNmsZNcBh1Yl0kmLqxuUp05zT5H9r+34tGQSs3hlAesy1kZROLjtiWb46nvWz+yzyjYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785316732; c=relaxed/simple;
	bh=ToeqrlPUewmjIoNM564JodgAS6s7zETigtjMo4GcHz0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kt//VED+BhlgVrtfG5mK8i+z9P5bzuRQaQJ08hMkFB7djgapOaxuaLms1ODNyCfX4vA1n8fthicC6MecbLxG4CYw+N3g5fObfrmx2mRxvKhgW5VGfvJXg3gN7hOIfUltML8JVb0a6q8H/HZhiX3mWhmIjxmSRq7mK+Kvr+agwK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=ceTddg+J; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="ceTddg+J"
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4954a9e8490so10119595e9.1
        for <keys@linux.kernel.org>; Wed, 29 Jul 2026 02:18:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1785316728; x=1785921528; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ToeqrlPUewmjIoNM564JodgAS6s7zETigtjMo4GcHz0=;
        b=ceTddg+JXKMvRTqD5Kw+xMEJi3fze/AG9WRFcrLU51amivhSlsnyresK4ueMWRd9xg
         G2QmLwEL/cuhyYExZmjiZePBccL62cVuMz1UHlKBwrpEstwFUJp+aDPFK4ZS+Tn9lOxf
         c4EMYVvb4CRbNKDmI0pxioyTeiPqwj9wyHwT47roA1Xk8Lnnl+5LJhtLtPHpGpyYHqR2
         yZYI95zjHHqbmvIM5q4jV3xc4espN6WtIBi0ER5aPX9mpAYmxoPLPfd16ORG59z7QFrm
         qlZAZ0tklo+Ss0YPjUKKcCBDOcMBQxHn+aph7Os2PGzewTKXLV2fi19k2VWhv5RfwA1X
         1Kkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785316728; x=1785921528;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ToeqrlPUewmjIoNM564JodgAS6s7zETigtjMo4GcHz0=;
        b=ZJwO2N8nSXdyZGmP1ROcnjvZ6MEv0HmQqi9IFbmeOj460ckjKkGfmfRoRxyH66lMU2
         /12Xa1mrOvnpPgB7FQ5XBd9hK0ZQdC8cIqFQlKLg4jsiKqxdefSpgasJddAY5IqIg+Mc
         Ay4S8ZWfMe/Omfwc+o7Ehbb88pejom8xNiVz/DBruPJIG/GNnZTgWOnVxHrOVfnH5iMo
         +u0DH4xS1/qt2euyqK9zV6hb5uze056UQ0tWCocH0IZbeCCYsPmqK9M8wkwIsp25pRWG
         DhJBYSHENtIT2ErEGtzk3hehaYlZ4k842Q4asfxXfK7WX5rd00UIKIf+4tPGFt/XmZFR
         h0Jw==
X-Gm-Message-State: AOJu0YxP1ZC+duKPy/Uyxg77vV8+0DFIzzHtyzqTK/8/kmN2aq+NCyR1
	2BJIKFrpG5zYHu04woCJyKbqbZy5GTyiiNUOHC5jk7+avWzWBfgTdy+HNkhKLM+Lv76kt8xxE9t
	+qxio
X-Gm-Gg: AR+sD13/sESNkK8mohBw3m2dOXkr117NnAwZtsoMTapYPKbatU4EJV9PXWAvtx6/yMU
	/yA9xuWtFaEuZeZTEDbn0tSNOuCU3m+OBF0yGKqkkkmZ4UdH0aQ7J3nKCwAFCOwEnHL1hr5B2M4
	IzmtjWNy7xU7Gk29lqtDogFa0wgithU0FxmcZrJ6zItOqR+vbcGcmt3GTcQUmyYK/cInge1uPgC
	khiueEpRz79Mde8cUMWCW0kl4jDP243TN2UIaF9jLIcNL+XeUyo4kpor2GZcTp+8K+p6qQWm33A
	gG/dpEMLZm/oxWBucw+4EWJkTgtKk2t+mqPKwAjU6KmByenya0KSZwWleJ5Uk+4Edh8kyqU40Wz
	rso1GEgCFdXsAw/FtmvWpA1kEHLKq4jP80TeQQIib0cXDOHu0aSltv45AzPn3t4vZE778pBIQI9
	5lr0viyM1cszCtb2bPwA+l3i5GT6raCcwh7Guizpy1RhgT7KyObG/8F3gD7UsnQcF9UjtvFQvmv
	NwWHNeBXSDNjoYIKvJICaZ47dQbtScuASoXNVd0HD6VdOWQC7F2s+babJgk2/fHDyP/4aNQ3sHM
	GhAmqBlFaevp
X-Received: by 2002:a05:600c:b99:b0:48f:e230:29f5 with SMTP id 5b1f17b1804b1-497fd315023mr16907345e9.16.1785316728101;
        Wed, 29 Jul 2026 02:18:48 -0700 (PDT)
Received: from localhost (dynamic-2a02-3102-8c5c-0740-065d-5c15-ad8e-c9a7.310.pool.telefonica.de. [2a02:3102:8c5c:740:65d:5c15:ad8e:c9a7])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-496e8e06f7csm49213395e9.0.2026.07.29.02.18.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 02:18:46 -0700 (PDT)
Date: Wed, 29 Jul 2026 11:18:44 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: keys@linux.kernel.org
Subject: Re: resigned keys from 9AFB7B8C9A5F5BBC
Message-ID: <amnD_6iU3xpbq68d@monoceros>
References: <2323770.72vocr9iq0@phil>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gcajbl6elfwq4gvc"
Content-Disposition: inline
In-Reply-To: <2323770.72vocr9iq0@phil>


--gcajbl6elfwq4gvc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: resigned keys from 9AFB7B8C9A5F5BBC
MIME-Version: 1.0

Hello,

On Tue, Jul 28, 2026 at 04:53:00PM +0200, Heiko Stuebner wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQINBE6G/GABEACsjV0H2Ij7gpn600ob3NtDKqCFUac4zoar9xguDBCwS90swWbs
> Fcfy9DVH82FvVTPSStpHNmlDWyvGgUu849Mvetq0vyu1hCnDFyivr1lcJMdTUQGr
> [...[
> auEdzitoLbpok80bS+F+soVyyEmodw15acNx/1pf5UbpnPmv0MAE5Oj+OcSLlE+5
> j4Q1ZUGCA1Z586yZKdi6mWzky1RTYRngrlA=3D
> =3D3LqI
> -----END PGP PUBLIC KEY BLOCK-----

The surprising bit here is that this adds an expired subkey (with a SHA1
binding, *sigh*) for Michael Turquette's certificate.=20

Otherwise looks fine.

Best regards
Uwe

--gcajbl6elfwq4gvc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmppxXEACgkQj4D7WH0S
/k7m1Qf/XAULX9n0pUwzTAjGt905In6mVs7Vk6AJ2Il0KzR/FQGtpftFP3nL4Nor
mEemZJXcNJ58hH5WbdmZ3qf/OYQZhB6jcoe5oqcySPVrmo2n+8aNe3M21oZOCccJ
VrIev5NQb7Btl+RUAiSx3uBEhofR0s+u+uLisUJpCQmojxSJ6WK+y0P+2T7cqrbr
+DPMi8Ixpnfq7nTcwVPgVDfYjrCjjQ+A/bZll8bM5U4qs3Df72QeBEiYioo36Kg+
OeXEsfMpAWBwk+Rt0EpLAuVVc/L6NFlQC2xvHhBxzhuSmurkiHlLnvAj8Le3Y2Oh
hxzKZAt9DgjU/EkAurY5eknE8d4UIQ==
=zQD4
-----END PGP SIGNATURE-----

--gcajbl6elfwq4gvc--
