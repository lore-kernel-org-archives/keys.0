Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793908895;
	b=4hKCjipWOCXkTx4pRzy2fH+/MIV5O0E61iJp6GrhwQCD2V9Na5P/ighwUPxkiu8tz0g8
	 xmUjUhzk6XgmEarkoM8mZ2V5OXdVXP62ilvDmgogg3UP+JKoSaov4oAONprSQICISXu24
	 /vJfiJwQnWHMMhXQw5eZBy3EMl9hcbWYLb5OZuCfkL+eJeYQHR2zL63xuJEoLggPtc0Ay
	 Lv/X5RpSTyT6gcAEknJ1Fcmxr6MqMztHhMWsdCPqvO0dV401jdKDP/63bVnnSJiDYKUsa
	 /P/BATY61LqZNb6qJcqG+cJjaculGYwkrr0Ydy/DLmQqBMyJJkjYa8lSvVhX11yOwHQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793908895;
	h=Received:DKIM-Signature:Date:From:To:Cc:Subject:Message-ID:
	 References:MIME-Version:Content-Type:Content-Disposition:In-Reply-To;
	bh=WLzoQDK52oLfu+pUfEvy22q54fKyUzmFn53kgxm7StY=;
	b=EX/WzvEOVaWvSu82rtS9T2oHexSGCvYhb+RRz4VD5A9wG+XhN5HhEIclKi+UbgX65Rtv
	 OTzRe/PaQnDRzYQjMjx88jJmYRLn3Bvn5pweVWSYvg6LogmWikKKEGoVoHisEsTF7sMDM
	 rTsVySejHjrhovXNPtQft/Zu5Kf/Fo52TyQyUJi5uFGZmT7sq8dDrsmSLpbh0s1m3EpJ9
	 14Vw35CeTDC8tgoGZJ1E/29pUobD3Gu23aYZbH152ZZhN9U2by3mtxMSMkx3/MHQV7zwn
	 CpsCD3TBzYthcUUarZtOmIC+M+USmgd48ztS9Lrm1CNC5SLya9dGeTeRNXDs9W1fskw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dkim=pass header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=VbWHWtE4;
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with UTF8SMTPS id B5689606A32E
	for <keys@linux.kernel.org>; Thu,  5 Nov 2026 20:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=VbWHWtE4
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id B464B1F0089F;
	Thu,  5 Nov 2026 20:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793908894;
	bh=WLzoQDK52oLfu+pUfEvy22q54fKyUzmFn53kgxm7StY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VbWHWtE4Li7lXVMdtb4D7SZ6T97K5kKnIkDJ5fV7Napvn8wVjMj8Pnv28oTLV+VkG
	 RBUut+9hhg5rAdO5UsjnGkiPMDYdb9TmR97el2KT5wB/dlhqSmQfoKaKqVBFOKyfLY
	 f3UlRSiWZw6a0BHJ0RqmcjVOF0L8HtF/eeul9ScHPllgfFJLq5cI9+jYfK80RJls3D
	 XNc95OZZGIW0SerbJcmyn6AnI9BV6e2iqkIHQDBZrnloMb9WsUtWQJUvT9EbNBeo9F
	 VC5EzIOkAI61fHevPhh5RRYjhtCot2khHtpwZQm6xAxBHqM3fjUuRe+3lzrcx8utBV
	 T96XGRo5rECqA==
Date: Thu, 5 Nov 2026 21:01:30 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Andy Shevchenko
Message-ID: <auzf4TLteDjm6m14@monoceros>
References: <arai7mgiftvKa5zz@ashevche-desk.local>
 <arbcPOClQ6xLhHvb@monoceros>
 <auzHz_yEFmTblvnf@ashevche-desk.local>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xobal3q64jjhe52q"
Content-Disposition: inline
In-Reply-To: <auzHz_yEFmTblvnf@ashevche-desk.local>


--xobal3q64jjhe52q
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated key for Andy Shevchenko
MIME-Version: 1.0

Hey Andy,

On Thu, Nov 05, 2026 at 08:15:43PM +0200, Andy Shevchenko wrote:
> On Fri, Sep 25, 2026 at 10:42:53PM +0200, Uwe Kleine-K=F6nig wrote:
> > On Fri, Sep 25, 2026 at 07:35:58PM +0300, Andy Shevchenko wrote:
> > >=20
> > > New signatures added
> > >=20
> > > -----BEGIN PGP PUBLIC KEY BLOCK-----
> > >=20
> > > mQINBFBQZgABEADCXO8OWYQr0Tcs7pPAkoTnwNU9ZvcciMNA5iL4ug1D2SMw8tf7
> > > LIVyyY6QV9jqIKuc8Mn63jYPxTMfJaYU/g1sL6qCHbl5N06SpRxrc8aXIEFiEhEU
> > > JABN9SGrKpK88BjCccfFBC42W/KLONuJudx73jehXh/qgUDp+5pyXrIJKQLlrkZA
> > > [...]
> > > AdRnOm0NGF1tIz9qjKpfLwhL4jqI+SF/cySk4JhvYS/eAkEcDvbM9EuiCUywRcrA
> > > uNOsEM3mDXbhYc7rAVWzGA1cuwA18wesGipBG6UDA99fwF9nN31hd60qunegiLJw
> > > wE9amTDpQt1tlsRxmm7MbuKILUZTCBSuWLZYZ+6deKmYwx0I8sj/KZm0EPGdiOAJ
> > > uQY43InPsLJMfKosog5OchCl8g=3D=3D
> > > =3Dowel
> > > -----END PGP PUBLIC KEY BLOCK-----
> >=20
> > This adds a signature by Rafael J. Wysocki on each of Andy's UID.
> >=20
> > Acked-by: Uwe Kleine-K=F6nig <ukleinek@kernel.org>
>=20
> Thanks, is it still need to be processed?
>=20
> I haven't got any confirmation email. OTOH I haven't checked the reposito=
ry
> for updates.

these confirmation mails are not sent consistently. Your update was
applied, see
https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/commit/?id=3D8c538c5=
cc15ff97f05b4a0a068ff137aeb97a27e
=2E

Best regards
Uwe

--xobal3q64jjhe52q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrs4JYACgkQj4D7WH0S
/k7WWwgAmOxCu/GHiBtnS+OGkwy8NefUp3daWFEZgKjOYmzWaVRLzK0gz2ynVB2V
nv1fICfJHds0b8a5gfOW18Gh5iU7qPrvlU0xSm6I1prtxgAGK/6mL8+hEjdY2kwo
zfqaRdx3N5IzWAxvvQ/HDSgrqN6SpAwmlwiZUJawSRGTs3sEtLKUrWCs3I5KeGyR
3jUIbwBXWEiuXWL6y24HrPGBEnuPJELvBB8nJeYx5+LypM2ux9Q1CO201lTh+zcb
EceZAIwFXWcFRgKlTR+7y+YMr2F2jyBdL/0RlzYoLgm1k6yABe9WcydZ6Ca6iOAL
l8EH7N09DaqHCt70XLwsRSIR+tJMpA==
=RHXG
-----END PGP SIGNATURE-----

--xobal3q64jjhe52q--
