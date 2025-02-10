Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A874A13A3ED
	for <keys@linux.kernel.org>; Mon, 10 Feb 2025 17:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739207067; cv=none; b=OVdkhJ/8mmQINWvCzO9iMXr0pB9FwEbOTsBhBEYFOH8+SKqOs39yAMLagUB+CUaawpj+mbOfCLrtKa06FwgJk8mTP53a1IYi+buJgiSAhrtZDHm5BEBA/8k8UAR5Q2IqgcmagT7KiAaNlOACXj10V96blGqiQInaUOPQFmgGWQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739207067; c=relaxed/simple;
	bh=BpzeWTEweFuQESS4DLevEa8PQy7ujuPEdYSyMpQtVOQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jTU2Z1D105DWS8YpjamFiyCru+CqFQz8iIDEFtWc9XPZgTqszVjebJqZmU2bYt67vjOdCU3XrIeiEQuG9f9fZNfyr0Bbts/FjBIuc94X3fTH0gYFAKLruakfFY19xlVs3zkkTqfRzjpt8mQCqzXmzm6EPusrO82Junq61yBblY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=V6/Sw22d; arc=none smtp.client-ip=209.85.218.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="V6/Sw22d"
Received: by mail-ej1-f65.google.com with SMTP id a640c23a62f3a-ab2b29dfc65so718063366b.1
        for <keys@linux.kernel.org>; Mon, 10 Feb 2025 09:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739207062; x=1739811862; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EAyJyHqTMb2XzuQ5oqj6s0cFa3P3vD7O8/nsWCS4asM=;
        b=V6/Sw22d/I/8+VjcR38QZblwQaeg3JWBDDQVoSqoWFQmhC5LnmGio1+T0enDaB+bse
         Wy9ZTdSZtMXms9WBZv2NuMT6b/ckw1AycUtkx4bO+0OuCxVc4s3dT59Exicz6r4Y9cpF
         0nbQ01S3igr5kmcQ5P6xTvbko2bHyNaMfAD1suQ+SrL5+aWWBLsydOrrzakjmQkfyKZl
         KqFJ0bLBoTYOcbPcJSP9gscV8k0UtII1P1qoSLwRrkA28aYZAX5l3yE1dlh726NuJ2uS
         QxiVg8YPNWvz1pYT3SyP79Xu0Ecri3KCY+JD9AT+n1X+MPWCgVpgaMeq/Xw5MJOQBglO
         8yqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739207062; x=1739811862;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EAyJyHqTMb2XzuQ5oqj6s0cFa3P3vD7O8/nsWCS4asM=;
        b=OHc2kmm8SepcIvJdYRGtePSXdIJGnP3gx7qgC0hkx5EDKYfIuw5N3JTI48QEVxZ3/C
         n6LnbV2+rejYAVKrMDUa4MkQ4nV8et4eYiEnjBsRov2EiD86LdkOqAmUVD+bntbIoyMB
         Gt8q1Su/CRIKCPqm2bQZCFRqNtiX7c+33K09Nl+rncdEt8SpAWzxywZg71Wd8pg/bZVg
         bIgl74gevNQiAIK8c51GiSWfYq9m3miaYKoRDV7LobyN8Accy2s1WdnAz7zu83WnxOvB
         qor+2SyrDDAIhpGOTvuVNJt9E1XWotKXB8aQouaolDe2jmviXBcFFwZrJcEFMpxnK3+g
         Lztg==
X-Forwarded-Encrypted: i=1; AJvYcCV+3FnHcteQsFIddsZ1dF359RkGwu7HV/V1frBZQhY5WbD+gp8WOGwUX1nn5Wmlm3F18hQp@linux.kernel.org
X-Gm-Message-State: AOJu0Yzp9MA79i8qXXJBLQoGuxWjIrua1SbdTiNX0kaLgsgZtENHMif0
	8ZIl3dZKD13AR1eOHthi6SWceW9y8EhOcp2Zq06r2zyfmx/KNhTfy7ROQG/wPFouzbrAdsvQe3J
	tTc18NA==
X-Gm-Gg: ASbGncszuXSLkTfazO2KyQBvIRGESqsL8QHmwsKQhbDvdFuZxFH3wT/pngk4b6/9jgx
	X/Ql+R6fpAgnuBUz1QhRic1aGyV5Hr1Rtj7P9tCDmzFZmSG3dKjiaclDrUZyGnAJj8JPvu2pcR7
	YdTB6/BC/p/ls7Qb5I5ibaIJYbpYZ232QZsZKThDBwDvUWGmMPZBc6SEnQ3/iadO5vq4Vl0N6G/
	42/J8wRlwH4diyGSAF5STdkgRmVE6vi9CoLVzV1tNToPq8LhzGfxw5Qn05+/9HY/B3aAtjiGa5c
	YmSg1YjAJaduejPvq/G1oVrXYH5yF14pBAmnzGA7uqWm+D1yxvFDtUUP2w==
X-Google-Smtp-Source: AGHT+IGe3k5fqggZyNF2CaUgZVLo3+TaNQBGsyYusz9mjvNAt08SfcL13o2C9WH2NCW23JdHvR9D9A==
X-Received: by 2002:a17:907:7b9c:b0:ab6:dbd2:df78 with SMTP id a640c23a62f3a-ab789c62da8mr1611187866b.35.1739207061419;
        Mon, 10 Feb 2025 09:04:21 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7c3c5c77bsm233120066b.74.2025.02.10.09.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 09:04:20 -0800 (PST)
Date: Mon, 10 Feb 2025 18:04:19 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, keys@linux.kernel.org
Subject: Re: Update AB5FEB886DBB99C2
Message-ID: <jkdqvomuxu4dlejfoh6do7rwwugtm6govimv6fh2nnxbkce6lt@onerz6l45r2y>
References: <b526faf1-896b-49a8-8f28-531294066583@wanadoo.fr>
 <6lba6hiolq65coivbzg4znlc2wc7zmax4saleg3e7ndspsxigv@qhg5pg2ypygz>
 <3ie26bbhuzw657fibjyzt4w3tdo5eip6m6nr36b4egzn2lzadi@fv3a4ebsd4f3>
 <20250210-amiable-ruby-toucanet-5d8374@lemur>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dc5rnio7phj2ci23"
Content-Disposition: inline
In-Reply-To: <20250210-amiable-ruby-toucanet-5d8374@lemur>


--dc5rnio7phj2ci23
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Update AB5FEB886DBB99C2
MIME-Version: 1.0

Hello Konstantin,

On Mon, Feb 10, 2025 at 11:22:36AM -0500, Konstantin Ryabitsev wrote:
> On Mon, Feb 10, 2025 at 01:43:41PM +0100, Uwe Kleine-K=F6nig wrote:
> > > > So let me ask: what type of data are actually synchronized? Is it o=
nly
> > > > the sub-keys and the expiration dates? Or is there a way to upload =
the
> > > > cross signatures somewhere to have them automatically synchronized =
in
> > > > kernel/pgpkeys.git during the periodic updates?
> > >=20
> > > The keyservers can really only be relied for publishing things like:
> > >=20
> > > - new subkeys
> > > - new uids
> > > - updated expiry dates
> > >=20
> > > For third-party signature data it's best to send an export to this li=
st.
> >=20
> > Note that keyserver.ubuntu.com still provides 3rd-Party signatures, just
> > gpg doesn't import them by default.
> >=20
> > If you really want all that stuff, use:
> >=20
> > 	gpg --refresh --keyserver-options no-self-sigs-only --keyserver keyser=
ver.ubuntu.com
>=20
> Thank you for the hint! I didn't know that was needed.
>=20
> However, we'll still probably only use keyservers for key updates, since =
if a
> key is in our keyring, that means we already have sufficient signatures a=
nd we
> just want updates to things like uids, subkeys and expiration dates.

That's true until you start to consider removing keys (because they are
expired or their crypto is week) or you also take into account
revokations. Also new signatures are good because a key that is today at
distance 3 from Linus might get nearer and so qualify to sign new keys.

Best regards
Uwe

--dc5rnio7phj2ci23
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmeqMZAACgkQj4D7WH0S
/k5mFggAh6H0q5Yl9GfZoXUJapf0fVBhBYq2MJuS9UXZ3d1nNg92NksrU5pDPy4l
cqlZn/tXZBW2sI8Wg3P0n9cgt40J3enC9yWFDWleyt5Zf6DL6hjiet5j/TvQekEA
JHA3W02IrbGXGELu2VtK75pGTHmfyAN52wvLjc5ZPYkTMFdtaMw/9dwA9QjoosJU
8tz6gcxwrEzkFr5BSeqYLkT1aovxG56UttRTzXrKsSJPBEKH13Vvs1pPoULRmue2
yKToAHSWgqV8BclxJwDcz9f3tJF/ZOUfLla30LdaF01gXZp5wkROp1B8YY9HBRBX
9sGxw6qgaNVlx3WO7Mpr6n8PbxRsqw==
=zfPu
-----END PGP SIGNATURE-----

--dc5rnio7phj2ci23--
