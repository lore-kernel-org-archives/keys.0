Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AE31C84C7
	for <keys@linux.kernel.org>; Sun, 23 Feb 2025 13:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740316654; cv=none; b=bvaTarl+3hKr7lJbfHFmTjdOmWBD7H1IZ26P1EcNCmoJBpvbuy4ffIlOKv+H7GHzZ4yv7fV9pV/81rw8fFJCg8OLtDx41B4A5M36xw+3pTtaRhR4uj681J+0fNJcNbr1T1IcWmwIr+KeD5s8RDvKQRmq5PWFJd+dUXymb3ECuSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740316654; c=relaxed/simple;
	bh=Pkkw6sP5zkCvphXHoRfzD2RjdsuWnPBuhBRfqt8cYCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F7ykRmmAoVde4HNudKpXzRTort7kg7p8oWBqWJIpXLaKhCfwNOaawYUjoLnvg/aUxmsq6EwZtJAbFyUXIgMT/IYWa0yjMYq5nDNIgXhwTuvDCmIyumTwLpAuKnb96gIdNyiu7LUqOSkw7Tx5ORzCMnvxx3LsBmahDIga4wNbfYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=GHRohbgM; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="GHRohbgM"
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-abbdf897503so789505766b.0
        for <keys@linux.kernel.org>; Sun, 23 Feb 2025 05:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1740316648; x=1740921448; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KY1mSqAzxyqeCs8mNWAQRg++1guKMvoilVqANa26ITc=;
        b=GHRohbgMPkfar7a8NxiFfkSgUNvoAUP9jtiP8eT25jYW9Y54P5+3Q3ytSzcugt7l8p
         K4t8STTlqxWMNUui7ReaLOkoCLYnV5i9qzVR/BIUOspwwR8umg1EK/Y4N+pyIFJeCupS
         HSz7GWmjqTv7qMmmz+D7P4hp9v3GNIKGPKEqMQVVUNWJ5AkE2tus2Xn3zdITbyghqkUL
         ywyq5OhwmFomM/ErhCAnTJOf30HDQ6h1pIgc0XJLfDBisBELdsEKO3pWTZcSboM/qP0n
         bD+5iqS0ZlvvHI4lH8dAHF3XSX6Ze5E1rBeJ2X5OY2wKGdNcST7RGNHgPaFgouoxt30d
         jlmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740316648; x=1740921448;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KY1mSqAzxyqeCs8mNWAQRg++1guKMvoilVqANa26ITc=;
        b=I3OwIQ4m0OTqJQJFsKIn8sqYg1PLzCyxxGGWybx8ja3OllJE3+UnkKcUNBCvA3VsLG
         MYTVbuU4TPcl8/cFrMu0JgI6t3mJvFsi3dFgR7jBOMzrRZYrUwBcbjb0vHuVk1DoFCCc
         ddluAXHKN4Ns45oLhUfhnjIQqFf0u2Lf5ewbUIRqmGZp5SWx+ZrKxGFElw9Mgf+4QXy7
         bcCoHRMqsRPNnmwU2GUAJ6iKImHAxNpR3bLwAGSkiNcIy+YAD+eh8OHcPyN8Ftt9yCnm
         L58jtP4SzH1332tC5I+9QsvQzD1KKPV4nEyo+2C8fX3HQeC/UbQcCym9lLhAF+XBEjzi
         CGEA==
X-Gm-Message-State: AOJu0YwmOzZ3RZ1Wrh80Il8hJExtSw028FbEeeIo6piaOftjp839Tg2c
	xYbqNSXNQJ2X52NECLe4fvwkIK2uupc0qQUmdN2HQ3bYlEhUA5y5eYPB12ZS9N+DgtilzPppuSB
	y
X-Gm-Gg: ASbGncsyIDN1o2MGhucTh1HObvNA3bLABwmhRTASYAfvnKUE4a6N+kSoqpkISOqICn6
	TzQjaEIKkcokesmAR3Oqp3BSGiGkmQpferOfSYfnIbKQM40cgqJKGTrbBmJ5urpDRAKTmwMAbTq
	O95wJTO4lNWLeohs5x00Ew/UrzmBrWS6JxZMwtWlnLADK9kzc+BGynHfb7xqd3BUkJAjtgksj2W
	oEGw71fJnXteBobgKurugrTH8eXEiGl/Qv51io/J+rW5LMbskYD4VTcnx6Mjphu16nq9xIecLc6
	MXvq5q273B0vmnerf5plenzaElvZtKI=
X-Google-Smtp-Source: AGHT+IGnqf32Y7ssyyS6stTALJFM3z4IKdQI6KfWn7TEiIadkllXJYD7lZ1z5j6aDnrKLlRr+sBvCw==
X-Received: by 2002:a17:907:9728:b0:ab7:f36a:24e4 with SMTP id a640c23a62f3a-abc0ae550bemr731397666b.9.1740316648137;
        Sun, 23 Feb 2025 05:17:28 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb80ba68aesm1553912266b.23.2025.02.23.05.17.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 05:17:27 -0800 (PST)
Date: Sun, 23 Feb 2025 14:17:25 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: keys@linux.kernel.org
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, "Neal H. Walfield" <neal@walfield.org>
Subject: fixing SHA-1 key and uid bindings [Was: Keys using SHA-1 in the
 kernel keyring]
Message-ID: <fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3motyyoo3@7vf7ip6gxyvx>
References: <c7klbj6xvzcfx63gid5iancjg6cv4krgm2wk6wfijwebq7bxtr@songleund4fm>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7vmkgdqdgmgd4dwc"
Content-Disposition: inline
In-Reply-To: <c7klbj6xvzcfx63gid5iancjg6cv4krgm2wk6wfijwebq7bxtr@songleund4fm>


--7vmkgdqdgmgd4dwc
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: fixing SHA-1 key and uid bindings [Was: Keys using SHA-1 in the
 kernel keyring]
MIME-Version: 1.0

Hello,

On Fri, Feb 07, 2025 at 06:09:40PM +0100, Uwe Kleine-K=F6nig wrote:
> sequoia (one of the alternative OpenPGP implementations) has a key
> linter tool that analyses key material for "issues".
>=20
> When applied to the keys stored in the kernel pgpkeys.git it reports:
>=20
> 	cat keys/* | sq cert lint --cert-file=3D-
> 	...
> 	Examined 643 certificates.
> 	  0 certificates are invalid and were not linted. (GOOD)
> 	  643 certificates were linted.
> 	  305 of the 643 certificates (47%) have at least one issue. (BAD)
> 	1 of the linted certificates was revoked.
> 	  0 of the 1 certificates has revocation certificates that are weaker th=
an the certificate and should be recreated. (GOOD)
> 	51 of the linted certificates were expired.
> 	591 of the non-revoked linted certificates have at least one non-revoked=
 User ID:
> 	  284 have at least one User ID protected by SHA-1. (BAD)
> 	  209 have all User IDs protected by SHA-1. (BAD)
> 	563 of the non-revoked linted certificates have at least one non-revoked=
, live
> 	subkey:
> 	  267 have at least one non-revoked, live subkey with a binding signatur=
e that uses SHA-1. (BAD)
> 	228 of the non-revoked linted certificates have at least one non-revoked=
, live,
> 	signing-capable subkey:
> 	  10 certificates have at least one non-revoked, live, signing-capable s=
ubkey with a strong binding signature, but a backsig that uses SHA-1. (BAD)
>=20
> 	  Error: 305 certificates have at least one issue

I spend a while now to work out how to fix keys with both Sequoia and
GnuPG. I'll show that with two keys I found in the Sequoia sq test
directory (thanks to Neal for pointing me to those):

The key 7AAAE2F9A20EE786 has a strong binding signature, but a backsig that=
 uses SHA-1:

	test@taurus:~$ sq cert lint --cert=3DF80F0DAA80C881408AB4B8257AAAE2F9A20EE=
786
	Certificate 7AAAE2F9A20EE786, key A15FEA88CB94EFC6 uses a SHA512-protected=
 binding signature, but a SHA-1-protected backsig
	Examined 1 certificate.
	  0 certificates are invalid and were not linted. (GOOD)
	  1 certificate was linted.
	  1 of the 1 certificates (100%) has at least one issue. (BAD)
	0 of the linted certificates were revoked.
	  0 of the 0 certificates has revocation certificates that are weaker than=
 the certificate and should be recreated. (GOOD)
	0 of the linted certificates were expired.
	1 of the non-revoked linted certificate has at least one non-revoked User =
ID:
	  0 have at least one User ID protected by SHA-1. (GOOD)
	  0 have all User IDs protected by SHA-1. (GOOD)
	1 of the non-revoked linted certificates has at least one non-revoked, liv=
e subkey:
	  0 have at least one non-revoked, live subkey with a binding signature th=
at uses SHA-1. (GOOD)
	1 of the non-revoked linted certificates has at least one non-revoked, liv=
e, signing-capable subkey:
	  1 certificate has at least one non-revoked, live, signing-capable subkey=
 with a strong binding signature, but a backsig that uses SHA-1. (BAD)

	  Error: 1 certificate have at least one issue

To fix this with Sequoia just do:

	$ sq cert lint --fix --output - --cert 7AAAE2F9A20EE786 | gpg --import

This works for me with Sequoia sq 1.2.0, earlier versions might not work.

With gnupg it's a *tad* more complicated (or I'm unaware of an easier
way). I'm using gpg (GnuPG) 2.2.45. You have to drop the subkey and
readd it, taking care to use the same meta data to get the same keyid
again.

This works as follows (if you follow this with your key, backup your ~/.gnu=
pg
beforehand in case something breaks):

	$ gpg --list-key --with-colons --with-keygrip F80F0DAA80C881408AB4B8257AAA=
E2F9A20EE786
	tru::1:1740247384:0:3:1:5
	pub:-:2048:1:7AAAE2F9A20EE786:1604498771:::-:::scESC::::::23::0:
	fpr:::::::::F80F0DAA80C881408AB4B8257AAAE2F9A20EE786:
	grp:::::::::728B335833FD26A94E0D4E138612FFC4BF6C6C54:
	uid:-::::1604498771::B54A5427E86E5C1403595B4F2832A22830465C57::SHA1 Signin=
g Subkey <sha1-signing-subkey@example.org>::::::::::0:
	sub:-:2048:1:E311678FFC76B5C3:1604498771::::::e::::::23:
	fpr:::::::::049FE6B6E73AADAE3DC45721E311678FFC76B5C3:
	grp:::::::::C63D43150EB6E5C37B95FDF66E9DBF74D6C1FCB2:
	sub:-:2048:1:A15FEA88CB94EFC6:1604498790:2613650939:::::s::::::23:
	fpr:::::::::566697A84501E920CD8F509DA15FEA88CB94EFC6:
	grp:::::::::656C1C47DEA278D6C87F58ED17F7CC26EBDB4F84:

It's the second subkey that has the broken backsig (see output of `sq cert
lint` above)

The key expiry date is in 7th field in the respective sub line. We need tha=
t in
a iso-8601-like format in a moment:

	$ date --utc +%Y%m%dT%H%M%SZ -d @2613650939
	20521027T140859Z

Now start gpg --edit-key freezing it at the creation date (6th field in the=
 sub
line above; note the exclamation mark):

	$ gpg --edit-key --expert --faked-system-time 1604498790! 7AAAE2F9A20EE786
	...
	sec  rsa2048/7AAAE2F9A20EE786
	     created: 2020-11-04  expires: never       usage: SC =20
	     trust: unknown       validity: unknown
	ssb  rsa2048/E311678FFC76B5C3
	     created: 2020-11-04  expires: never       usage: E  =20
	ssb  rsa2048/A15FEA88CB94EFC6
	     created: 2020-11-04  expires: 2052-10-27  usage: S  =20
	[ unknown] (1). SHA1 Signing Subkey <sha1-signing-subkey@example.org>

Select the second subkey:

	gpg> key 2

	sec  rsa2048/7AAAE2F9A20EE786
	     created: 2020-11-04  expires: never       usage: SC =20
	     trust: unknown       validity: unknown
	ssb  rsa2048/E311678FFC76B5C3
	     created: 2020-11-04  expires: never       usage: E  =20
	ssb* rsa2048/A15FEA88CB94EFC6
	     created: 2020-11-04  expires: 2052-10-27  usage: S  =20
	[ unknown] (1). SHA1 Signing Subkey <sha1-signing-subkey@example.org>

Note the key A15FEA88CB94EFC6 is marked with a * now.

	gpg> delkey
	Do you really want to delete this key? (y/N) y

	sec  rsa2048/7AAAE2F9A20EE786
	     created: 2020-11-04  expires: never       usage: SC =20
	     trust: unknown       validity: unknown
	ssb  rsa2048/E311678FFC76B5C3
	     created: 2020-11-04  expires: never       usage: E  =20
	[ unknown] (1). SHA1 Signing Subkey <sha1-signing-subkey@example.org>

Readd the key:

	gpg> addkey
	Please select what kind of key you want:
	   (3) DSA (sign only)
	   (4) RSA (sign only)
	   (5) Elgamal (encrypt only)
	   (6) RSA (encrypt only)
	   (7) DSA (set your own capabilities)
	   (8) RSA (set your own capabilities)
	  (10) ECC (sign only)
	  (11) ECC (set your own capabilities)
	  (12) ECC (encrypt only)
	  (13) Existing key
	  (14) Existing key from card
	Your selection? 13
	Enter the keygrip: 656C1C47DEA278D6C87F58ED17F7CC26EBDB4F84

	Possible actions for a RSA key: Sign Encrypt Authenticate=20
	Current allowed actions: Sign Encrypt=20

	   (S) Toggle the sign capability
	   (E) Toggle the encrypt capability
	   (A) Toggle the authenticate capability
	   (Q) Finished

The suggestion is to use this key as Sign and Encrypt. To match the previous
usage (important!) make it a signing key only (matching the 's' in the
--list-key output above), so toggle encrypt capability:

	Your selection? e

	Possible actions for a RSA key: Sign Encrypt Authenticate=20
	Current allowed actions: Sign=20

	   (S) Toggle the sign capability
	   (E) Toggle the encrypt capability
	   (A) Toggle the authenticate capability
	   (Q) Finished

	Your selection? q

Take care to restore the previous expiration date.

	Please specify how long the key should be valid.
		 0 =3D key does not expire
	      <n>  =3D key expires in n days
	      <n>w =3D key expires in n weeks
	      <n>m =3D key expires in n months
	      <n>y =3D key expires in n years
	Key is valid for? (0) 20521027T140859Z

	Key expires at Sun 27 Oct 2052 03:08:59 PM CET
	Is this correct? (y/N) y
	Really create? (y/N) y

	sec  rsa2048/7AAAE2F9A20EE786
	     created: 2020-11-04  expires: never       usage: SC =20
	     trust: unknown       validity: unknown
	ssb  rsa2048/E311678FFC76B5C3
	     created: 2020-11-04  expires: never       usage: E  =20
	ssb  rsa2048/A15FEA88CB94EFC6
	     created: 2020-11-04  expires: 2052-10-27  usage: S  =20
	[ unknown] (1). SHA1 Signing Subkey <sha1-signing-subkey@example.org>

	gpg> save

OK, the key is restored now. Now modify the expiry a bit to make the new
binding newer than the previous one; otherwise for others getting your upda=
ted
key gpg will not import it. You have to restart gpg without the
faked-system-time for that to work:

	$ gpg --edit-key 7AAAE2F9A20EE786
	...
	gpg> key 2
	...
	gpg> expire
	Changing expiration time for a subkey.
	Please specify how long the key should be valid.
		 0 =3D key does not expire
	      <n>  =3D key expires in n days
	      <n>w =3D key expires in n weeks
	      <n>m =3D key expires in n months
	      <n>y =3D key expires in n years
	Key is valid for? (0) 20521027T140900Z
	Key expires at Sun 27 Oct 2052 03:09:00 PM CET
	Is this correct? (y/N) y

	...

	gpg> save

That's already it.

The same procedure is needed to fix a key suffering from "live subkey with a
binding signature that uses SHA-1."

If your key suffers from "User ID protected by SHA-1", the procedure
with Sequoia is the same as above (i.e.

	$ sq cert lint --fix --output - --cert 7AAAE2F9A20EE786 | gpg --import

), with GnuPG it's again a bit more complicated, but considerably better
than above. You only have to resign the affected uid:

	$ gpg --edit-key --expert A8AC5ACC2FB87104
	gpg (GnuPG) 2.2.45; Copyright (C) 2024 g10 Code GmbH
	This is free software: you are free to change and redistribute it.
	There is NO WARRANTY, to the extent permitted by law.

	Secret key is available.

	sec  rsa2048/A8AC5ACC2FB87104
	     created: 2020-11-04  expires: never       usage: SC =20
	     trust: unknown       validity: unknown
	ssb  rsa2048/666981FAEF87076A
	     created: 2020-11-04  expires: never       usage: E  =20
	[ unknown] (1). SHA1 User ID <sha1@example.org>
	[ unknown] (2)  SHA256 User ID <sha256@example.org>

	gpg> uid 1

	sec  rsa2048/A8AC5ACC2FB87104
	     created: 2020-11-04  expires: never       usage: SC
	     trust: unknown       validity: unknown
	ssb  rsa2048/666981FAEF87076A
	     created: 2020-11-04  expires: never       usage: E
	[ unknown] (1)* SHA1 User ID <sha1@example.org>
	[ unknown] (2)  SHA256 User ID <sha256@example.org>

	gpg> sign
	"SHA1 User ID <sha1@example.org>" was already signed by key A8AC5ACC2FB871=
04
	Do you want to sign it again anyway? (y/N) y

	sec  rsa2048/A8AC5ACC2FB87104
	     created: 2020-11-04  expires: never       usage: SC
	     trust: unknown       validity: unknown
	 Primary key fingerprint: 94F1 9D3C B565 6E0B C397  7C09 A8AC 5ACC 2FB8 71=
04

	     SHA1 User ID <sha1@example.org>

	Are you sure that you want to sign this key with your
	key "SHA1 User ID <sha1@example.org>" (A8AC5ACC2FB87104)

	This will be a self-signature.

	Really sign? (y/N) y

	gpg> save

If you have problems following any of this for you key (or if it worked
fine for you!), I'm happy to hear from you. If you report a problem,
please include what you did and the versions of Sequoia and/or GnuPG
involved.

I guess many of the affected people will miss this mail. I intend to
contact a few of them in private pointing them to this mail to get some
feedback if it works. Once the procedure is proven to work on a few
keys, I'd widen the audience.

Best regards
Uwe

--7vmkgdqdgmgd4dwc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAme7H+MACgkQj4D7WH0S
/k4o3gf+MerY+TbILlDQzf32oYUaVqwiHsl2JSBZ+YkF4DX2tnEqsudY1K3iTVBj
YH5MLbmYOD8KWlXNOi2czgL6LE/laA/Jf1FpJZKwL4+911lxtjw3cvP6tpkMe7Ti
m5Rn8QDLzYd3HYEQSQCBNfyTJ76jaHcLnZiL4MJI+qo6DLUNDZvD1Q0fsdapZpZw
pmS5h3CQ2TWnadbKd3/3hLaCb6eckJP7OQ8WPV7zYbPxHjNTRBQCqGT/uSRT6s6Q
3qv8CKIgrd2hhi+75Yt3BL2ob4JovAkNzdKBOzNr0fZYESEEhwTOfo6qi2nTKiai
SoIGq7aigzpOls01KPl/O47lW1sIHA==
=Mcz1
-----END PGP SIGNATURE-----

--7vmkgdqdgmgd4dwc--
