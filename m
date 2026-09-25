Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9472F32B137
	for <keys@linux.kernel.org>; Fri, 25 Sep 2026 20:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790368977; cv=none; b=KUyk1l5+z79z+4lYnEI8JTjB3+2aAhrN/9piu/uYifSBy8d+ommcgnT3uU1R5MUdl6Dtxx/LpQ0GWWEDTbI5o6LoMWxFbkqPDTagY7m314a77C8AZaft6L4SWLAQnis+HcWnBqjuXBbl8zHeAzpeoe58E1I+chmalD1+Of5riME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790368977; c=relaxed/simple;
	bh=IpooHReSbeFgJN00b0S6Sj3pHaH8VEdm4iIEwg9OO/A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=p05z1Y7//9cQEKbL0exIIZ9GF7NjIZzx41vUAs300w1jmZ0wwcuTGZl0UTrm72rZvFquaP5AcoqXlsBozHnt99fnm4RKdGIJceTCoa+gvG9mc8jxDErOozlS8M3PamitO5YnSX8mKfjLx5I+fkHPpuvxjwAne6BnBiiHFDD6f7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/a6x3KD; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k/a6x3KD"
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id 8FE071F000FF;
	Fri, 25 Sep 2026 20:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790368976;
	bh=IpooHReSbeFgJN00b0S6Sj3pHaH8VEdm4iIEwg9OO/A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=k/a6x3KDlK6hvbn1BuZ/jZiNWGdoCUOpaceo0kIcu9uTvIRKz4jk7y0D7D2babztS
	 OkF2JAKtfwDvXmURF33hhQeCpLz3gUUSqSGkMa7M7bU6Y60d1aQoTpAqdF3Yf5fyHG
	 s/MdpCcQc0mywxhCEi9/l3K3oFGXKjPEZhp2zgnU774faXPoWbH2ssbTF0ODNu8EoJ
	 S/fOJeEUHZJUnKzfkU/0iIaEZMu/fSSX8x5N90JObI0ami7kHPNs7rT4U5MtxrrsYs
	 oYFu0C4qqRTCl2Q/0jPvN0HUQvcVH76BdfLSvpo9wBPE6p/aHWoDzJIAGsId5CplXf
	 frr0DqfHBJpsg==
Date: Fri, 25 Sep 2026 22:42:53 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Andy Shevchenko
Message-ID: <arbcPOClQ6xLhHvb@monoceros>
References: <arai7mgiftvKa5zz@ashevche-desk.local>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e2qu6nfjc67mlfce"
Content-Disposition: inline
In-Reply-To: <arai7mgiftvKa5zz@ashevche-desk.local>


--e2qu6nfjc67mlfce
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated key for Andy Shevchenko
MIME-Version: 1.0

On Fri, Sep 25, 2026 at 07:35:58PM +0300, Andy Shevchenko wrote:
>=20
> New signatures added
>=20
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQINBFBQZgABEADCXO8OWYQr0Tcs7pPAkoTnwNU9ZvcciMNA5iL4ug1D2SMw8tf7
> LIVyyY6QV9jqIKuc8Mn63jYPxTMfJaYU/g1sL6qCHbl5N06SpRxrc8aXIEFiEhEU
> JABN9SGrKpK88BjCccfFBC42W/KLONuJudx73jehXh/qgUDp+5pyXrIJKQLlrkZA
> [...]
> AdRnOm0NGF1tIz9qjKpfLwhL4jqI+SF/cySk4JhvYS/eAkEcDvbM9EuiCUywRcrA
> uNOsEM3mDXbhYc7rAVWzGA1cuwA18wesGipBG6UDA99fwF9nN31hd60qunegiLJw
> wE9amTDpQt1tlsRxmm7MbuKILUZTCBSuWLZYZ+6deKmYwx0I8sj/KZm0EPGdiOAJ
> uQY43InPsLJMfKosog5OchCl8g=3D=3D
> =3Dowel
> -----END PGP PUBLIC KEY BLOCK-----

This adds a signature by Rafael J. Wysocki on each of Andy's UID.

Acked-by: Uwe Kleine-K=F6nig <ukleinek@kernel.org>

Best regards
Uwe

--e2qu6nfjc67mlfce
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmq23MoACgkQj4D7WH0S
/k7K+Af/QrIZ6dnNLcPa1SXTnQDk0JbOaluGwHsgVH3L6u3JE6V6XLZ7aCTO6Il6
6jryRGOA4nhtpcTLlSjHP/Ix1VO6w2MztvxbVamvf5GVTLgWWNPsUOv6IP2QZEoA
OfJgsy+sidMQIEpYCOKWsq5aa8oJqLUzY8H58Y1+Ob2nz47sykVsn3HoXP7tTm3G
P53meYzW80d8od3kLiq18zHn0yh3dgyEk44Bbz/qag9Dz+CbS+6A7v49qswLk1Rr
rABMDOPs0NMzlw28TgrJ/tyE3MW39h7xnRqZ8VK98nbpr23NuiNy4V62zr49V2PE
EPGqP1w3E4kxf7CE2OR1Lfwou3hRhg==
=ST7T
-----END PGP SIGNATURE-----

--e2qu6nfjc67mlfce--
