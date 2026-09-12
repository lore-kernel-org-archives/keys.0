Received: from mail-wm2-f12.google.com (mail-wm2-f12.google.com [74.125.225.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB12A3B6C0C
	for <keys@linux.kernel.org>; Sat, 12 Sep 2026 20:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.225.140
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789243542; cv=none; b=UzPwBNt2oRn/ZUKft39Vt7HQ+1zAVcbZrFtgzmliQv4Jz2TDf4RXtpmvf5zELuq3zk6GpsgwioLolsWAVxyexcGLqSqDcUgqkNCgFo39ftaNHQ5WYPGYtiXbxnARcC4qducyp8CgpoIEXuKfPyLUYkSqN5aHN51a7xCkQ9EflLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789243542; c=relaxed/simple;
	bh=XzEA91WV8JjV8l8BZ6ZyCfiSHXffOwXrpoAN0uH0us0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kinpg9nApao30cLhd4EWjAgLyyAEfBkLHroYSLm/55kmUuKxm6tcbBV++6QX0B3tDdc8W/l+FtZ0Bw28V2btVNN6jV4YryisfznVihUiTs8Pq1S3PoWKDeyMDElthhZMYJP7f8m2jE0dmZrk5v8JaI0eYwAUJPP050DHPMxSwdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=TlsV8nm9; arc=none smtp.client-ip=74.125.225.140
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="TlsV8nm9"
Received: by mail-wm2-f12.google.com with SMTP id 5b1f17b1804b1-49b965f447cso4995285e9.3
        for <keys@linux.kernel.org>; Sat, 12 Sep 2026 13:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1789243530; x=1789848330; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ABXZJMvx+L1eQYRw87RtBlMsiJIveZ4mCvVVifRmFOM=;
        b=TlsV8nm95N5UYp4UK4YErH3m28jO1J1rINeNBr93BiTLW4REQCPfFBQqd++Eh2f9uF
         L6XKA6m2/WIgZi/2ND6RWx6ePp9Pds0C+pXUnzqOyg3AYjGBP1/NUohwVEhoN5fHcb+A
         jYSj+Xzlwm3GMuVQWF0tdfietdkjRuEqeANutnSeZtjGgeXxZEEEcNYmwPMTUgN4Gv9R
         qHMPtkQ214UhUh9+mPsv8BV0h8Ohf5eVSXhCXcANM3lbi2TEVHSnswsVHJfbbkV4s1eS
         +D93BYqDHcde+rc/zXo1sGjyuyqz7/nJdzhS5MdKZusUDxthq5LKmZ399u/8hZJ02dga
         dR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789243530; x=1789848330;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ABXZJMvx+L1eQYRw87RtBlMsiJIveZ4mCvVVifRmFOM=;
        b=RKyH0sIqxSwcvi0yBLDAKE8OwNjp9z1za832pSNbdV/4kjhrWrzPeumEgJeuHduxYO
         A5ls7SgaPTUnOmjxAj4AguM5OcA8VQWXQpPjaFrGFCuLp5KAQfBaZD8ryeHgpc5vg3u2
         /ny7KwhMJmDVsbgRDp13aYlGMr6rVgZVkBDPWgfrC4Gkw3GXXx5Yn/tsQooCYZ3BiV1C
         irEgf17/jEJaD12e1RhJ0N5NxIQPP+f32r6oT8/hAUsEidXReL9AwFO7hqrKVII9Ejc8
         ZWn4drUsowaj1V0D7yVwpWHKywftj5KOS4wCkv5xb1IaqCn+5ETUPDQV4j7qtwfhcveD
         zoHA==
X-Gm-Message-State: AFuF++mrsb+RnAq3bSbNNQVPxnsY6BizvKcFy3Ki1PVu8VyzbKdqvGNO
	4bwyO6nMBsDSUvWQBM3ppUfRL942jFLQuNrge8/13GCFINT2i6kr6/LXpDrHaXZJpXTPL3D9jau
	6EfRs
X-Gm-Gg: AYBFou1frPeWMdBMy1/o6BJ0oUEkstc4B30XIpotcVoGy/rADLTn+tvOOt+ohkaq57H
	Fhhc49gpUectJjveDjkOG9ZBIZimgY+kjcLDTbUpRnF7BcFc8jWf9tMyWD973vbqPZKSf22lXY8
	cqDu+pOLVO0QxKNjG5qSlJQ5jXwHIlIPjZYQfycykQcYnhzTIERBpQdnB4IMlZ3QgRR5QprziKK
	yDseLa8+jDk5NS1rVAhRU8xf+eDR8RKK3wfBZyWxvVRFTMX5pfaH00P8ekcwqxI6D4p/VUY55hH
	gs5PYUjIL0xZUulfB9AGrz7Ngz6ZGHnPTyLIyZTYG6+Z+TWw/iCS7o6pjZ52G6Glr/BYgpR55uI
	o19gNc5Kd+M6H73UF5UrJbxtH6bH3JPo8mz0yg9IHQwb9lUndRKTUUXlJJeKTnTEnBFN1THdqyI
	UQtsqO5+RsMEPagn+bBkDrqastyS7Z27V2x5OPThbA8hLcDYqMJqYuKPUwckySlVawc+hWLDfqT
	F0i
X-Received: by 2002:a05:600c:19c9:b0:49e:6683:d23c with SMTP id 5b1f17b1804b1-49e6ca4003cmr35771745e9.0.1789243530014;
        Sat, 12 Sep 2026 13:05:30 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-49e69f02e0bsm68254025e9.2.2026.09.12.13.05.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Sep 2026 13:05:29 -0700 (PDT)
Date: Sat, 12 Sep 2026 22:05:27 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Fan Wu <wufan@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: wufan@kernel.org
Message-ID: <aqWvhGafN_tF-uP0@monoceros>
References: <CAKtyLkFmH8eAXH5Rv16jj7TJbYYwu4toOweV9r37mcpwVognoQ@mail.gmail.com>
 <CAKtyLkHzZmxddmUJvko5nZwAocnHpq5w1_MiRy-K_5o1qjwv+Q@mail.gmail.com>
 <aqSIIOex44DlV5zP@monoceros>
 <CAKtyLkF2HOF0SNmoZXJQN54TTwaoWag5MATW+JH3oNvT3=gvaA@mail.gmail.com>
 <aqVIgS2ftVR9SygL@monoceros>
 <CAKtyLkFuOpDjHjDsymD1UXP0caFkNZUP6uE_iiK0-iUtrrATZg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yrv2wnhsm7vbkf6a"
Content-Disposition: inline
In-Reply-To: <CAKtyLkFuOpDjHjDsymD1UXP0caFkNZUP6uE_iiK0-iUtrrATZg@mail.gmail.com>


--yrv2wnhsm7vbkf6a
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: wufan@kernel.org
MIME-Version: 1.0

Hello,

On Sat, Sep 12, 2026 at 08:15:15AM -0700, Fan Wu wrote:
> After your reply I checked, and the wufan@kernel.org UID still shows
> up on my key and still verifies tags fine -- so it looks like there is
> no real problem. I don't fully understand the mechanism that keeps it
> working, but it does. Sorry for the noise.

The relevant thing to understand here (I think) is: keys (main and sub
keys) have expiry dates, UIDs don't[1]. And different versions of a key
(or certificate) just add. So if you update the expiry of your main key
even if at that time it doesn't have a given UID, putting together the
updated certificate without the UID and the older certificate with the
UID just gives you an updated key with the UID.

Best regards
Uwe

[1] At least I never saw that. I wouldn't bet that OpenPGP doesn't allow
    that though.

--yrv2wnhsm7vbkf6a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmqlsIUACgkQj4D7WH0S
/k67lQf8Cjh5LpGMphjUH8Dt+h/21kFUlxMTDJqmiQHTZRg/yn505RCGm6kWgLSa
bkTzAAUQPwi8xXRAe8eZpq6FbIxFrDaZd1vzXC0zZ/YHbK8aY8K1cwFxCpldZ47y
miHc2+weCcocQPvdvQ7icmYtaWUqos8BPYL6+DIbdEhchBBpTOBPuXlY6YSShKmj
WQZjrsXrNziHoeFp9phVRDuDJTJspujW2+pXCrmRINw/V10t6ZnQ52Aq8HAuWq3t
+zC688XxLxyLNe5MOAwV3meJJcBSqASMzRBtt9fvNAZV83dbwVdJtaensEOfrq8R
XvsKRb5/3opWZbq6LUp1pwYldWQ9Gw==
=81o4
-----END PGP SIGNATURE-----

--yrv2wnhsm7vbkf6a--
