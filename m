Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E3218A6DE
	for <keys@linux.kernel.org>; Sun, 23 Mar 2025 17:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742752269; cv=none; b=ljgvJLz1AjS1G9SZD3DZ8DtqT+ZAGdSr0MQHoONCTLwDC6SNYsT8Qj2Cb/LUPYokdripd0BryvrihYv+QcOAO/LGG7jmqrc6mWDwsrNmaUG24d6A6DyQOgyjZxUIWWSFIx2UKgeRiHDlIgPI3e5otQ829PW4vvJYEYkO6lhMZrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742752269; c=relaxed/simple;
	bh=NYleWPKu9tYTR6RS7MLZkyYSXEELlhC3f+p+ZdbWM94=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LOlbn+5JPL7PMGOHbxzoGMHEyDy6sqYgiSjie7x29N0gk34dI3n8RTAAgAnzHQAtTjyWKxeHTHbP4H0YVkkr7XszhMRj8Pqq4OilRliW788xk5xlZR5xEbfJVvGeObimK0oR63QQMeTlZaj9j5DS4K6iNCyMFweVoATZzkeloSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Cn32C32T; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Cn32C32T"
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-abbb12bea54so410657766b.0
        for <keys@linux.kernel.org>; Sun, 23 Mar 2025 10:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1742752263; x=1743357063; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=96K4EYdbY2hnTHOy0cLXOO3LJTvN+XdI6b4uppvvDDk=;
        b=Cn32C32TOAtK09/3en2kWrAEoPhdSbJtSMJRxtrNo8JQ+QEB5czhROhtQsPbLZ/DfQ
         tka+UeZyvtWP45RtTnthTvAdastOi10Dyj3w15tFgrUs7Ed9TLi5bqYu8HMJiXcptoNJ
         O3C4yidjNnu2Trf8ELLEhj6LfTW9IHXQpqDnFB27NkkMR3IQkbABM8EeckMMMK2cAefi
         XWwTqhKHgC2Y+20zioBGADEg6jriABb2+mtumVdgnsJ40tnEXLyW9ohpcOOyP0GlVjsz
         BICfuwyp/rQKrw7wdv2C7qWtPIr3Mf6ZHioOzxbcyPz6wwgYCBkA1L5X/ikL80NRNv4o
         7A/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742752263; x=1743357063;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=96K4EYdbY2hnTHOy0cLXOO3LJTvN+XdI6b4uppvvDDk=;
        b=oE9ndCozA5Jg1SUUA5Y+0fHChKVnn3726Eiblp2Zg0EyfxS4QCBiZNSVQyhu54TMko
         IVuQeM3Q/epYNDQctYlZFi085o5fGdeh5fmR9tsdjAbxvdACh3/cCGfi3cIePuq3b2bG
         jhsRSNMbTYUIJPv6I2xoQ1gT7zSs8ULkwWS/KxgwST3m5oD2O6cKywXF7VoCabEN/HJ+
         qeynUqppvSHCxcYmOkcAuWIzpr0XoXe66QDvtdh83c+m6T5zgq/ctkCGmqNEP8MHLGW+
         dyJ+0E8WEEZp+Msi2m1xb4bjLqYYCK0rPj7i5lYoF2D12YcQSkM7poFCVmHUncjMCnsn
         8L9Q==
X-Gm-Message-State: AOJu0Ywdm6euNXvWuBg6TL6JBVzG6rN8lo/9zixDBplfkZQd+vWtf+bX
	SexPMvkJv5Px0t8cRVR48d5LYz30xC6kUxUbr0bEWIZnKr/cwRhZcRZ53g9ZBJo=
X-Gm-Gg: ASbGnct3k0sUSv0k9/uCyPIkFpHUqanwzI3KcP3mxMYP10VO+mpzXq/lkfAHOxzw7UN
	LkooHlQK7rMUhx3KmFFbUu7Ss0BZkWp3lQwnvgDPHlpxrc57DuHy3ivt6WAtu0FLKvwVUn1AY5I
	tglprqON3dFz5mOtXxy+E6dkw/z/PUnnFskKADWufpt7Jx+VAKJVEhpLemSN64kWzH7GXuitHIb
	akxhRNT30MVYJhSwSB0c7FwBGGDsKX2SR1QrbXCa7OiwVuXwTQEUmFJlR9KYv2BLaSOYr5UVtkM
	+sNDmBStd1+DSVqbLv60WbI/M+RSdfC0HoNewPPX21vNkmQy8OYvJuhzG2ru
X-Google-Smtp-Source: AGHT+IFH2v4JpOMfRElkUprhykETaNr+ZQ839d61jCbmJqJ8FkMRcA/5vIV4JZqEQvAH/MOSeYCcwQ==
X-Received: by 2002:a17:907:f14a:b0:ac3:3f11:b49d with SMTP id a640c23a62f3a-ac3f1e069f1mr1044759566b.0.1742752262961;
        Sun, 23 Mar 2025 10:51:02 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3efd569fesm540552466b.173.2025.03.23.10.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Mar 2025 10:51:02 -0700 (PDT)
Date: Sun, 23 Mar 2025 18:50:58 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: Keys using SHA-1 in the kernel keyring
Message-ID: <rkdw5m3dnwaneqpz7ed4pm6zy6og4xjeiubxpef3melwapkg4w@odcuzqrqxu3q>
References: <c7klbj6xvzcfx63gid5iancjg6cv4krgm2wk6wfijwebq7bxtr@songleund4fm>
 <20250321-cordial-panther-of-chemistry-0e46ad@lemur>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="voypljcpztl6ondi"
Content-Disposition: inline
In-Reply-To: <20250321-cordial-panther-of-chemistry-0e46ad@lemur>


--voypljcpztl6ondi
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Keys using SHA-1 in the kernel keyring
MIME-Version: 1.0

Hello Konstantin,

thanks for taking the time to consider the issue.

On Fri, Mar 21, 2025 at 03:20:44PM -0400, Konstantin Ryabitsev wrote:
> On Fri, Feb 07, 2025 at 06:09:40PM +0100, Uwe Kleine-K=F6nig wrote:
> > Given that fixing is so easy and SHA-1 is broken since 20 years, at
> > least getting the high profile users who regularly sign archives (or
> > keyring commits :-) looks beneficial to me.
>=20
> My general concern about this is two-fold:
>=20
> 1. What is the actual attack scenario where this could be abused? I know =
you
>    pointed out that Linus and Greg have sha1 certificates, but they are e=
ither

The binding is SHA-1. So the proof that a subkey or a UID belongs to
the master key in question, relies on SHA-1.

>    on UIDs or on their E subkeys, which they don't use for signing.

I discussed this issue a bit in OFTC/#sequoia. It's still not entirely
clear to me if an attacker who manages to create a key matching the
SHA-1 binding of (say) Linus' E subkey, can use it to graft an S subkey
into the E binding. This would be bad as then a
faked-linux-6.27.tar.{xz,sign} pair could look authentic.

Of course it is believed that today nobody can create a subkey matching
a given binding. But this is the scenario that we're considering and
want to protect against. This protection should happen some time
before someone manages to create such keys. So it's not an exact science
to push deprecation of SHA-1 and involves some crystal balling (or
prudence and an early handling).

What is known today is, that SHA-1 is less immune to such an attack than
SHA-256 or SHA-512 which are used today for bindings in new keys. SHA-1
already suffered quite some attacks that decreased the practical safety
of that hash algo a lot from the theoretical optimum for a 160 bit hash.
(https://sha-mbles.github.io/)

So this is about increasing robustness from a level that was considered
OK up to approximately 2005 to one that is considered OK today.

I think the key motivation should be: SHA-1 is unsafe in certain areas.
Switching to something safer is for many applications quite easy. So
instead of arguing that in this case SHA-1 is fine (which might well be
right today), just switch to a safer hash. This way you simplify the
overall situation and can concentrate on the situations where it's
harder to replace SHA-1 (or kernel development or something else you
care about). That is the approach that NIST is taking:
https://csrc.nist.gov/news/2022/nist-transitioning-away-from-sha-1-for-all-=
apps

>    Both of
>    them have [SC] keys, so I don't believe the following case wouldn't re=
ally
>    apply:
>=20
>    > (You could even argue that the old archives should get resigned, but=
 I'd
>    > already be happy if future signatures will be fixed.)
>=20
>    Since they aren't signed by subkeys but by main [SC] keys, I don't bel=
ieve
>    anything would be gained by resigning the old archives.

Ack. That suggestion was non-sense and wouldn't improve security.

> 2. The second concern is the fact that we're changing keys for Linus and =
Greg,
>    and just the fact that their keys will have obscure changes may create=
 a
>    negative impact of its own from the social engineering perspective. If
>    someone sees that Linus's key has changed, but after they pull in the
>    update there is no visible change to the key in the keyring is going to
>    cause confusion.

I agree this could create confusion. But it could also create awareness
that there are many additional PGP keys out there that are worth
updating even though the details are not available when just looking at
the output of `gpg --list-sigs
ABAF11C65A2970B130ABE3C479BE3E4300411886`.

Note that a user of e.g. `sq inspect
--cert=3DABAF11C65A2970B130ABE3C479BE3E4300411886` will see the
difference.

> 3. Third concern is more of an aside that Linus hates PGP and getting him=
 to
>    do anything with his keys is usually an endeavour. :)

One theory is that he doesn't hate PGP, but the GnuPG implementation of
it. Sequoia isn't without a learning curve, but I know several people
who think -- after grokking these initial hurdles -- Sequoia makes
sense.  For GnuPG the usual feeling is "I don't think I will ever
understand PGP". Might just be my bubble..?!

Best regards
Uwe

--voypljcpztl6ondi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfgSf8ACgkQj4D7WH0S
/k5ejQf+O+8/J7iuRK77I/X1VwnYcbBp2xWEWZJGh8Nal4PPGkRM2wBI8MthZnfF
wiVKSHUGqJhqEeAYhk+IRQa7XVai1XRw6eI1K4OY6eMjxWPME2rLwiq9yZdeP+tQ
k/2UkzHXAFDgV1FyFfebsTznaW1OykiLihJUoc+IU/7OwNjl2zpyzBJoKuq4tX2c
VvoHVJVykUlZ8D3W3x3owy650NwbfY+peeRoqfhInSRuDhPavOdkKXlTktVUu1o5
M7WLoNGW+8zX8cOnRiwyEXxig/wB6rbmI36p6QtaQdhgma8fDydUNN/g3ksZu6p7
LaH47idJTelta7typA06W+CHIAWr8Q==
=rMLl
-----END PGP SIGNATURE-----

--voypljcpztl6ondi--
