Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A40355F3B
	for <keys@linux.kernel.org>; Thu, 19 Mar 2026 10:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773916363; cv=none; b=AOVZ7wsEsI5HhBNkaOUxIZqlpD8gfD2rUsSGdJGXEnocvUShbmD57XDDJ+e+7Xl4l0uKpGujVp0TbnBp+1dgHeAzq5Bm/7dJk6CC2jM6DLfb5jSU5bVc8vcNZMpS1PxzFUKoXGPqq2xfdrev/0j2wo2e4kQBblCvJNniSYJ99ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773916363; c=relaxed/simple;
	bh=kTVYlunREfBqpQ5FCxqx09nrywt7W/iqmSQ1XUKksso=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J8VBPPeSiaJLslUXofZUcKeSrjiRpDZhWV2zMs18AYangtRYGcFUNWwIiSCpQlMvpT31OA7HG1YwOGr3zdiDcbge4LZE5YZyu8Tc40Ie4DXnrcKJMaFPrSmzaA/z/tkSlgoyXgepeKMZFEzZ0w3vMHY5nUQ+AIZ0mynvIhcDG3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WPj6e2Ix; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WPj6e2Ix"
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-48540d21f7dso8214525e9.0
        for <keys@linux.kernel.org>; Thu, 19 Mar 2026 03:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773916359; x=1774521159; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kTVYlunREfBqpQ5FCxqx09nrywt7W/iqmSQ1XUKksso=;
        b=WPj6e2Ix+DJIBahbkpFJwfYQ7XrKLlL/iN3j7TeyJDC6HxTJ48tRsJgndTM+L7UDHA
         4MJUxGNbLJpnKqoTdvZmE/3jMGizEcfrxOt/LjaK3Rcnib8tzBLbkAdoJB/UHiczklRC
         tVha6kD1bnmiutinDvmx2GIW1TPT9o+NnMh3D/2jhL5VoMpH3aR9v7fX8Qpo9PgsV17h
         8VrfixOWetmwoywXeY/OmlUarehs1MANodrxthUng+fj1Ld6FjyNr/5njL26W5VRTDbS
         vNhY/6ZIRSC3g3aEizgQuzYodxNk53Tbsxe7YGEmyOgTq0QfTIEY8xxxzsTAqww5wRXr
         W2bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773916359; x=1774521159;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kTVYlunREfBqpQ5FCxqx09nrywt7W/iqmSQ1XUKksso=;
        b=bSmoVWt2NKn2yskyM1syUAHAukHhTuCTlJCqa1+ewPqgpuajSD4Bb28ZK6dkKH37jE
         kf7KUD8ImnNo+CFQu37Sq7mAGUhIUkXsM8mKDK1ih6ibtOjflnjkanFmvelORii9PnfP
         q13boE3ewt/40JX3hFI57F18NNQbWNZheTC+OYackbeD09ca9HZxsrlKUsw/OQad52u/
         traY1uw5ep64hQPlfw3/Uh4Ic9rtFuimnROy0ZgwJU9Gu+0+pAZyNDrqc3GuRjeFVkLb
         12+v3Zz0Q6i5cFtbsbT/pQMk1+fTah7dHoc99VtBgJMreMQ/z/WsQt1dTNechhyxgh+C
         /1uw==
X-Gm-Message-State: AOJu0YzsTR0O3SB1/Y/JdioT8MM890hy2limDBdeinnzf/DEv5r6/K72
	S9f7nz130StdDbjvInL7GX1tfXx89hZi26/RWN9bjhW2hddaZZ/pS/FQoc287v3Sl7vXUFoCMte
	kXa1JqPk=
X-Gm-Gg: ATEYQzxWQ894gdlfZVIGJdE2XrIZLTYbBsSOmbsuUKj/y0f9uQXKuBiAJG4Oifj14+E
	XIR731Y3g7MYlsXwSTKIGMibsRIKauLPltNiZ9STMNssgxMunQdrlU79azFq9sIH9nmOoSpMoit
	9MaN8ZZgvyBQ0bDmkDN1KXY3Y1qM/eszEIrXXmPkS2Ncs+jvFvQuoKIwF2lBL+a/9fUOe9OhKMo
	Zy7BUFuL1r0HoLJOzRoO2MZp+7QFRn4BpdyjdxdVSlw/0FKyAoHPGfOkMUY0imVS8ZkG7y/I3a/
	yV89CiJqSqTdG7zbMNH2/WpHTUjM56lWNcvpyjDe6Tfhx8BBGVUEsNVsvgMieK/4PO4+On4SjJR
	ZJeBo24GTkbZiqUVN/vpg39dP+hPfF6yxhstIkLYYj3FPwNVX24r6v+gZEzkH2Vm/LDYo5zNR7l
	kt3cGLI0sJtnuG5ZZC4ZN82waEG035pFMD7/Bph9wxyLbB4dgpH+B2MsLRFfCrjiU6A4A6D0aVs
	TCO1zXn+WHWW0Y=
X-Received: by 2002:a05:600c:a4f:b0:485:9a50:3384 with SMTP id 5b1f17b1804b1-486f4476ccbmr115768995e9.25.1773916358763;
        Thu, 19 Mar 2026 03:32:38 -0700 (PDT)
Received: from localhost (p200300f65f20eb04b304fcdbfdcfe8af.dip0.t-ipconnect.de. [2003:f6:5f20:eb04:b304:fcdb:fdcf:e8af])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-486f8c4aa85sm46060595e9.12.2026.03.19.03.32.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 03:32:38 -0700 (PDT)
Date: Thu, 19 Mar 2026 11:32:37 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Andi Shyti <andi.shyti@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Update signature for Andi Shyti
Message-ID: <abvQSbUmIe8XiGUA@monoceros>
References: <abs2KxqsUGpHungW@zenone.zhora.eu>
 <abs2KxqsUGpHungW@zenone.zhora.eu>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nimxs3cv5gdfold3"
Content-Disposition: inline
In-Reply-To: <abs2KxqsUGpHungW@zenone.zhora.eu>
 <abs2KxqsUGpHungW@zenone.zhora.eu>


--nimxs3cv5gdfold3
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Update signature for Andi Shyti
MIME-Version: 1.0

Hello,

On Thu, Mar 19, 2026 at 12:34:25AM +0100, Andi Shyti wrote:
> please find attached my signature with updated expiration date:
>=20
> 0BAA159BA80750A9.asc

Looks good. Compared to what is already in the keyring this is just an
extension of the expiry date by roughly a year.

And the key is healthy, no SHA-1 issues.

Best regards
Uwe

--nimxs3cv5gdfold3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmm70MIACgkQj4D7WH0S
/k5n9Af/bitzTaNzj5dS8Zn7G64E+mWLiAaV0ZJqOOUh0Vb8JM+T23H/sKRJywMf
Rw4FtF08iAz0SKFOTOf7728TSPFF5MD+gX2XCU/gaL5EVVbC3vz2t3baWQDDmPXn
rUCQuwg+wGsxB5+hNUJDlar5PJ2XRi/kVWgEpyd7xpxuF4G3SF7pJYB3islI+qon
k+nIVrj1V8bIzutZKRDNmn10s8O3nNNSUdZfNIyulKr5/ObuptgDlehRen+ZXurf
nIondkEu6M8YLQdolP/tWnPFbWKDExLg2knfNTNf4Jy4zGH65yA0D2EhE5zASA1t
7csMvOgKUhA3jyyDttik0W9Pn6I/0w==
=v0CT
-----END PGP SIGNATURE-----

--nimxs3cv5gdfold3--
