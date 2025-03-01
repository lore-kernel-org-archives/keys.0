Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F975191F77
	for <keys@linux.kernel.org>; Sat,  1 Mar 2025 09:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740821848; cv=none; b=UnOf9lmXeL/IcIeIgWcwO8W6w5unZjfMYnvnfAQSSY2sMBdiM1YNsazbYcbTPTKR+IIo5Ig4hO5yL8hQ62qmQdrURs85JtDDy8mPIz46R6esAW4zFVq1xMHjD/X9wM1L7RSoyByr55U7iYKbrX6Bl4blZk2xMCpWeqUHqoVT3Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740821848; c=relaxed/simple;
	bh=J1bJH6Q8StagcFJcDYCYQeXynFzfqNJdYa6RqeeQyuI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V3csoIvojpuI9e8Dvbb5znZ0RgrEZ8paUrOf2BZh7XqF1KY634NDYnrW5IhGZTC3TVmHIhZJSxu3YTwv/mq0E4hR7/ohyJb0UJZZrSdwG2XqiG908BjoMrYfwisP9cdk0HFRPeRb1sf1TG1c6e3R9i5DDwyu178KHeNmcU35V80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=M6VabPJW; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="M6VabPJW"
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5e04cb346eeso5032200a12.2
        for <keys@linux.kernel.org>; Sat, 01 Mar 2025 01:37:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740821842; x=1741426642; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QntUuZAAyGg+dYstDYAER8VTKCIwTI5GyUMGehKv17Q=;
        b=M6VabPJWYzHVS8qCkvmioizuwgFa7mQbGK+wZt6MpqbKK/x/hp+ctnrBg7vWj0lGEl
         seqxj5QRXqT9Ge+Qjbz3nsmRtwW8HrycJvkzNAtI2rTXiLGA85SNp7LWJ35rGShNfN0u
         T9XtVn6YeYTP0YpRjQPa5zG+IAT1oMr0uWDUq9uVgd0ySJefTBEsJdrUntccaywHp3ik
         vuy8Q5s9xeodaUzR9qMNHOQeHrAr9Te4xxWEhpxqyii7pAHiJkuhZMu6Fz0y0bxBVEue
         v3f3/JI4O+grfEZmgj5yZSwvdiZ3JsP6TZGBHhKrH9s0b2D8umPDRKDr7wYMswiaFRSW
         7ktQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740821842; x=1741426642;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QntUuZAAyGg+dYstDYAER8VTKCIwTI5GyUMGehKv17Q=;
        b=CutiQQ4fyJZkQu6FvFEqOY+wAE6kOCM1aoiZKQOg7m4/ULo4obyjZXP8UFxpj+gmCY
         JA82VnYpTamYhB7fX8lM4XVrOd8GR/WIk1UPle+qtuLMK/V6IUwjTTrPpmRrVR1mn5j6
         XKd9F5RhuHr8tgPmFafGUjW5yqxvCtajO1hZmBPiMGONwW7Loonzic97TYUaTz7MZX+q
         hOYMl4ZNUp2x1fhfSfGGA+iQrM+sgYVOVq4KQxNaeeKZ/yYihIclDYlPx+TRi+yEEM5S
         QZkCpR7dHcKcdys9fWUiRB+OsQbwLkvPFsjQw+Tro4B39i6tN5A4lu3O1zBhpPIbTOw6
         ibrw==
X-Forwarded-Encrypted: i=1; AJvYcCXQgQhfxeG4rJvMZ+aewXGfFeayMJf8x8PQVofklwZAyUIDErELoPnfCIws6Fts8wnr0pO+@linux.kernel.org
X-Gm-Message-State: AOJu0YxlULc+tknP15H51VnJshCkuV6fF2eRikZOIY7vjn+k/h4phrhq
	g2q3OX0TKDXUY+EqOxdG2GB4gmXGzP48Za+MUP2V2G5MOsFtqN3JM7KbXNEshPg=
X-Gm-Gg: ASbGncutoqybE/zIyXmCk/2Fmts/oBwks2Ay8vqx2yFmvQ0sQC1fRITB9gsLD9dXOrD
	hVvHAVLz2+CAdE8B8Qcz8d4DFZlflLpq+BQdFXMDhaCHmoVteiLs1AueMnfsqIooJIuDTrVTOmJ
	HMCsR+hjGPRMXv8+9Yz8NCWNfDE7IphnNmDomVDmRgE6njjLvl2j29eI+w/2nL52I3EwpSAjQKR
	usziMQlmsHbqQDEB1/tmuhzJekqFGIWKtUbqjb+Sa0vsZEwNn+ghxasGa3i4alddLiKjRWCqzbl
	iguPuhgPlXMq9ZLK5fyruc8/H4G3gr2um/Ii6UbvQm5gK3pqxA==
X-Google-Smtp-Source: AGHT+IEXaWzA+myOUUlVEy14QT4bKl09ZAfdOus0vxjCo1YsWfOKux51tSDU3ATcyPRA5OdLzIOIPw==
X-Received: by 2002:a05:6402:35ca:b0:5db:f5e9:6745 with SMTP id 4fb4d7f45d1cf-5e4d6911563mr5487846a12.0.1740821842179;
        Sat, 01 Mar 2025 01:37:22 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e4c3bc8800sm3928768a12.48.2025.03.01.01.37.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 01:37:20 -0800 (PST)
Date: Sat, 1 Mar 2025 10:37:17 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: "Kirill A . Shutemov" <kirill@shutemov.name>, 
	Tony Nguyen <anthony.l.nguyen@intel.com>, keys@linux.kernel.org
Subject: Re: [PATCH pgpkeys 0/2] Restore and refresh two keys removed by
 2dd67ee0231c
Message-ID: <2vqevtgpsuxr47p73bdkx4fgstatewg4riyb6wiyqiqcilufgx@lrwbweedqwur>
References: <cover.1739880058.git.uwe@kleine-koenig.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7xoqykzdipomkslj"
Content-Disposition: inline
In-Reply-To: <cover.1739880058.git.uwe@kleine-koenig.org>


--7xoqykzdipomkslj
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH pgpkeys 0/2] Restore and refresh two keys removed by
 2dd67ee0231c
MIME-Version: 1.0

Hello Konstantin,

On Tue, Feb 18, 2025 at 01:07:20PM +0100, Uwe Kleine-K=F6nig wrote:
> commit 2dd67ee0231c ("Drop all keys that expired in 2023 or before")
> removed a bunch of expired keys. Shortly after sending the patch that
> later became 2dd67ee0231c the keys by Kirill A. Shutemov and Tony Nguyen
> were updated. With the updated expiry date they fulfill the criteria
> again to be included. So restore them.
>=20
> Best regards
> Uwe
>=20
> Uwe Kleine-K=F6nig (2):
>   Restore two keys from the previous cleanup
>   Update the recently restored keys to get new expiry date

This patch series didn't make it on the list. Do you have doubts about
it?

Best regards
Uwe

--7xoqykzdipomkslj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfC1UIACgkQj4D7WH0S
/k7iHgf8ClR4Fk0t9rEytQuWl6BT6SfN/hBxbfTERBFCGD5BRncj1cAmvJR9OLoZ
BTX0r/siFgbzVqS+2IJxB2eXKyFd72ATeW5MWJvPzZu2O4n+jEJ7zvg9LdGaXCAg
zJAhG8o8CTFdQvOJg25E+QwZidabzY4Y1gmZNTxA1O6u2gXOxKBV9M+DKkIBb/VI
5aKvyHlSfhRZOu1uwxTkmID6PJjZSt9YKaZyucLIB5rc2BtKDVFgWEOEYbg/1lQ1
WmJ4pemGnmAQRFIZCkzEg2dMzzfLgL7c6CvsN+TaQ0nv8hMvEv0mlanl1gTV1Dn0
Tcw6JDakyDK/fy+5UXicxbV805Ng6w==
=tFkg
-----END PGP SIGNATURE-----

--7xoqykzdipomkslj--
