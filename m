Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579E41E1C22
	for <keys@linux.kernel.org>; Mon, 10 Feb 2025 12:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739191429; cv=none; b=N+WPHv20Y3+lZWpEAaao5n6Axd31cTwSEcxLfr2tvsW9knlaFr/hVajTjkyLHwr6AtSgqHEgqtAQypDdrJnnxPZeQgDpnpH/xRNCueSKHGIhARTCYGnC72ymK2zhixxVFZf/Tb/oeyyQn06S2kKIETXlJ1twEPrv1T9Pdb2M37A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739191429; c=relaxed/simple;
	bh=pmzOlclZD6cyNHd6LjOBJ8rbKhloEOG/LLrtuCsEzDE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BED5oeHVGpt2512g6zEaww58nUAihdLbM3yzLHx0Zg5oLN4fC2FrDxa174vga15dxWFxoJK3zu6oBwCucavI/odkElmqDzoge281zXH4SJQDlQJruNLLTNSLQeepGFushqyQa3JuX5JZsVfEwYolkdRDp8cywb8JOsqR4XiSB/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PxuGZ0q4; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PxuGZ0q4"
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-38dc5764fc0so3079443f8f.3
        for <keys@linux.kernel.org>; Mon, 10 Feb 2025 04:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739191424; x=1739796224; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4xjMNjcxdscp/2Aqp0BomHqqjtv6E4i8gh21ppDGIas=;
        b=PxuGZ0q4rDtk1qHJtNjbXujeQav9o8MlOGrvLP9I6zlxgDH9E02mzgWA37itFY/qYb
         bnb/CrtvoM0wamYewA7TFxhyZ1tYzl8e2oej7c4LXTAO1df25rG1aQGPQWV1FjrebQ2Y
         OKUNF48pyt1lmsD27Q4abBEVp+UyFSa3afiT++eJXa1NwdEl6pEBJWS6AeZMmzN0I0Aj
         tZUNfqdnx+0fTmyaferH3mpL46czE1fmYt62J0nBnc9EdXCy3opOINmpryJqGm5I929Q
         ejhP1pN3kqMchhcXTgX1QQHE17+vL75SBAIdjfKcRH4Kd7gqs99OVyVoFB0svbnb2jEp
         TEsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739191424; x=1739796224;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4xjMNjcxdscp/2Aqp0BomHqqjtv6E4i8gh21ppDGIas=;
        b=uYRkdu/qRWkF0i/bWKYCKbD2l6ZbmG5liWk4b+f0FkGBpzj+FOQ+tdBGC0L9Fxdg37
         JuWB66LWuyEssocO/HVwWWVwzirElvJY31LIoSPlPLwATpiVJ7w1oejr5YZNi3SNjT3b
         qmuMwtSHdfVUJefbpZrhdfatSKSUMTdN84Us0SkpY6O7fgSoUwDaNpo/11Tu/0jRlDZI
         w9aIJteHgTwHHuatZvn6F5J0trWma+6MXyjwkn6DFjZwOyvmgGuY9mdDrdgZ1/6shaUw
         +zAQBGBugPPhygGyyjuCG7Sg5EXTTaZrVT1hza2tJLFH/R4uxm3CtMJEA9DyEDSRX1QL
         0SeA==
X-Forwarded-Encrypted: i=1; AJvYcCWKktpXTyV9XME3eZq4muhgXvqnYGY2uyMhOgXUWBCmKIIxSOeGknHmaWIznQNzCeGmEBqC@linux.kernel.org
X-Gm-Message-State: AOJu0YwCELDrZeG+3ceaWy8tHFsbqXt5TsiFzebTQ0nTKGfbEL0S3USN
	CLbkxn3BQLG3QTKPS8aGmEBlxLLnvw8thjz5q6U2V/69JqW3mAavytuHUG3ZH+g=
X-Gm-Gg: ASbGncvPJmFUCQEZ2Cm6vOav1Z6HxoNkCv+idn7n1N7aVszT5e5mQbZbKqgyyEhmqIJ
	OHl4QbsJ67zuXlv4Qnsl9wiSGwt3yJDkpYXocIDWECRY/MUT+/ZczPxD7MtCrrwS3XBDaSTB/ol
	k+Ed5014IUPQXG0ezWG7SZaHM8+dnK5MdC90JLgFqViAzz2sIWc6UFozivc5YDclR32ZewrSoCM
	528XKoiJD0z8nidMjOkDDnnwUy+MIr6YY0La1oPnTNTzx199JFvPng+j0IhEmnFR3JolLUxPKci
	QiH1vXmbrWjuSotYfE/X0m8uYuMznvokDtbcvBBe9Sly3YTnVAUkGyZ7aw==
X-Google-Smtp-Source: AGHT+IFXRJMygQI3V+XfVWMv/RzxA/Y5LK14zSCw7B5yx9iS4ndDJ6oHtvoO0DikWf7hIk2ch0mSFA==
X-Received: by 2002:a05:6000:1541:b0:38d:d3e2:db32 with SMTP id ffacd0b85a97d-38dd3e2dc10mr4914497f8f.7.1739191424043;
        Mon, 10 Feb 2025 04:43:44 -0800 (PST)
Received: from localhost (p200300f65f018b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f01:8b04::1b9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dbf6e4a4bsm11995142f8f.92.2025.02.10.04.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 04:43:43 -0800 (PST)
Date: Mon, 10 Feb 2025 13:43:41 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, keys@linux.kernel.org
Subject: Re: Update AB5FEB886DBB99C2
Message-ID: <3ie26bbhuzw657fibjyzt4w3tdo5eip6m6nr36b4egzn2lzadi@fv3a4ebsd4f3>
References: <b526faf1-896b-49a8-8f28-531294066583@wanadoo.fr>
 <6lba6hiolq65coivbzg4znlc2wc7zmax4saleg3e7ndspsxigv@qhg5pg2ypygz>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="owavepq57jsbrttq"
Content-Disposition: inline
In-Reply-To: <6lba6hiolq65coivbzg4znlc2wc7zmax4saleg3e7ndspsxigv@qhg5pg2ypygz>


--owavepq57jsbrttq
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Update AB5FEB886DBB99C2
MIME-Version: 1.0

Hello Konstantin,

On Wed, Nov 27, 2024 at 11:02:10AM -0500, Konstantin Ryabitsev wrote:
> On Thu, Nov 28, 2024 at 12:37:32AM +0900, Vincent Mailhol wrote:
> > Hi,
> >=20
> > I=A0collected a few more cross signatures. Could you update my public k=
ey
> > with the one attached? Thank you.
>=20
> Updated, thanks.
>=20
> > Actually, I also wanted to confirm one thing. I uploaded my keys and all
> > its cross signature on keyserver.ubuntu.com:
> >=20
> > https://keyserver.ubuntu.com/pks/lookup?search=3DAB5FEB886DBB99C2&op=3D=
index
> >=20
> > and so, I was expecting those cross signs to be automatically
> > synchronized during the periodic update. But it did not happen.
>=20
> Indeed, looks like they don't give us the third-party signature data when=
 we
> ask for key updates:
>=20
>     $ gpg --list-sigs AB5FEB886DBB99C2
>     pub   ed25519/AB5FEB886DBB99C2 2024-06-01 [SC] [expires: 2029-12-31]
>           ED8F700574E67F20E574E8E2AB5FEB886DBB99C2
>     uid                 [ unknown] Vincent Mailhol <mailhol.vincent@wanad=
oo.fr>
>     sig 3        AB5FEB886DBB99C2 2024-10-27  [self-signature]
>     sig          0B0244C40D0D431C 2024-11-05  Shuah Khan <shuah@gonehikin=
g.org>
>     sig          EBC26CDB5A56DE73 2024-11-04  Steven Rostedt (Der Hacker)=
 <rostedt@goodmis.org>
>     [...]
>=20
>     $=A0gpg --keyserver keyserver.ubuntu.com --recv-key AB5FEB886DBB99C2
>     gpg: key AB5FEB886DBB99C2: "Vincent Mailhol <mailhol.vincent@wanadoo.=
fr>" not changed
>     gpg: Total number processed: 1
>     gpg:              unchanged: 1
>=20
> I only get your latest signatures when I import what you sent in:
>=20
>     $ gpg --import keys/AB5FEB886DBB99C2.asc
>     gpg: key AB5FEB886DBB99C2: "Vincent Mailhol <mailhol.vincent@wanadoo.=
fr>" 3 new signatures
>     gpg: Total number processed: 1
>     gpg:         new signatures: 3
>=20
> This is normal, though -- very few keyservers still provide third-party
> signature data after the attacks on that functionality a few years ago.
>=20
> > So let me ask: what type of data are actually synchronized? Is it only
> > the sub-keys and the expiration dates? Or is there a way to upload the
> > cross signatures somewhere to have them automatically synchronized in
> > kernel/pgpkeys.git during the periodic updates?
>=20
> The keyservers can really only be relied for publishing things like:
>=20
> - new subkeys
> - new uids
> - updated expiry dates
>=20
> For third-party signature data it's best to send an export to this list.

Note that keyserver.ubuntu.com still provides 3rd-Party signatures, just
gpg doesn't import them by default.

If you really want all that stuff, use:

	gpg --refresh --keyserver-options no-self-sigs-only --keyserver keyserver.=
ubuntu.com

Best regards
Uwe

--owavepq57jsbrttq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmep9HsACgkQj4D7WH0S
/k7juggAowvGFLayhIyWn21aoXuxN3kXbpkjU98IguVSNGX0IYhnEJztT0dhRCm7
TeXABVidgcXczvvWN4jOEaQbYaX9wLC4M/YQ04E5oYq1f6sqO1kCPDPtCteMQA9R
H4C4YTC7sQc2OhJttYvCBfEK0B/Rul7Y38WlKdABHMLdSlx4WWVbwBJJY1C362IZ
3Jv2KBRd44G+04V8E4ygsLOGm2n/KHjSXsXayp/1fRCnAW4XMqgCGyDcERIQwDfD
fk1hOG80lCjAwd7VngF+1fN3d6G5MeP1ooiUN5m2t/H6vi8DcWQNrwztLjwmL0d3
tz2ItSL6QwHZSzIpBFkJRICEw5PlJw==
=f3z1
-----END PGP SIGNATURE-----

--owavepq57jsbrttq--
