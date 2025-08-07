Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC72F25B1C5
	for <keys@linux.kernel.org>; Thu,  7 Aug 2025 14:27:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754576820; cv=none; b=M41nZOC93ig/yLgfWUFsEIpWsi4pXcHYz8ZnPj6PiOj280SSUGUF1D9Hp0Q8b3PongitmzN8ItUrvc4LuoWrak/6+bZVI9QtsMGj2dAZy7b+cJvdGijfU0cNAF7r7ZvSMnWwHLUeD0N8igNnWma8vtKWGHTVdtxdiRcLJerPQmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754576820; c=relaxed/simple;
	bh=OmNVOEYQG5EtLmZVoFyIXDEN3jOu6P3C+mQC2fqcU88=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eYuF+TrB5q4dDRA3A59iQSFgFxFRXHTwh6GJm8K1/9qTWUBlnG4PG1E9l0eI/XfJ8Mu3RNcte6zVPzEq6gTlT8WALJuZwlqqQwWwPGDV39/NMRPryXXhAm8UWXoQZLWN721B/sFihmRA/xxw6ZHMX4USyGocI2G29+cLy2VVV4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SHenEmfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SHenEmfK"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F28DCC4CEEB;
	Thu,  7 Aug 2025 14:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754576820;
	bh=OmNVOEYQG5EtLmZVoFyIXDEN3jOu6P3C+mQC2fqcU88=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SHenEmfKxNP5a+03YuerAVRze7uPJ2AYP/wfFqPjJImjphB/To4eujygAxAD3vQst
	 TL0OLsWxh0FKCrHya6DF+Hh0DDMcZZkEpi/Pmksqv6xF76EdxTwgh875Zkuc1gXmBJ
	 sRB2MLSm81sKxpR44mcLpwqITjhMxwHV9R89p2NxsmfW362BdvgUTChpJRhGJwyeT5
	 NJsqLUWd2xxvONkM5FU1eO8RHSQSEfZwKALDO03UDGt2s6pbfpQ6r4K8ZEWJ5NHoNV
	 Gwq2K9fsRcG6m1iKK6bpcOrSQDG7o8CmYT+yA7tv6/VRFUMlGx3MAzxSQDXs0pyqF2
	 ewfIXYfmczt4Q==
Date: Thu, 7 Aug 2025 16:26:54 +0200
From: Joel Granados <joel.granados@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org, Joel Granados <joel.granados@joelgranados.com>, 
	Joel Granados <j.granados@samsung.com>
Subject: Re: [PATCH 6/7] Remove expired signing subkey of Joel Granados
Message-ID: <kn2hscakoyj6nl4yxn2i7wnjol37jt3zdedqzwbvv4hhezxhzc@4w25xf4pkpkx>
References: <cover.1754379198.git.u.kleine-koenig@baylibre.com>
 <95d951d396bf2034e4d090f82f22b0b15b73d8dc.1754379198.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mn2s52tv6hgppxcl"
Content-Disposition: inline
In-Reply-To: <95d951d396bf2034e4d090f82f22b0b15b73d8dc.1754379198.git.u.kleine-koenig@baylibre.com>


--mn2s52tv6hgppxcl
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 05, 2025 at 09:59:07AM +0200, Uwe Kleine-K=F6nig wrote:
> The subkey expired in November 2024.
> ---
>  keys/5895FAAC338C6E77.asc | 40 ++-------------------------------------
>  1 file changed, 2 insertions(+), 38 deletions(-)
>=20
> diff --git a/keys/5895FAAC338C6E77.asc b/keys/5895FAAC338C6E77.asc
> index 9a228cca2ccd..b435101ed14f 100644
> --- a/keys/5895FAAC338C6E77.asc
> +++ b/keys/5895FAAC338C6E77.asc
> @@ -10,8 +10,6 @@ sub   rsa3072 2020-10-29 [S] [expires: 2027-03-22]
>        AE47095725E63125CECB2790BA97CD52B796414F
>  sub   rsa4096 2020-11-06 [A] [expires: 2027-03-22]
>        0E81B177263D4031E4744DA662B669D05E153901
> -sub   rsa4096 2020-11-06 [S] [expires: 2024-11-05]
> -      5738F39D590536BFC54CD0F8CF756396B98DDF71
This is now revoked on the ubuntu keyserver. I think that everything
will be everything will be update on the next update from
keyserver.ubuntu.com

@konstantine: Get back to me if you need me to push changes to the
pgpkeys repo.

Best

> =20
>  -----BEGIN PGP PUBLIC KEY BLOCK-----
> =20
> @@ -214,40 +212,6 @@ l3zluXfCDM7lHyQXJ2ujBv4YiucmLmrTmkXStXVPCvQ8lMmdUOwz=
se6V+7aUfu4i
>  qSUfD7tZdDWcf7q+vWaNKQIyr1tu3me6W9URm4ZI06FzTjM7xpkJQ7S3Rn/WOMT1
>  Un/GpCl7zUPGSob4BLjWXnQ5Ue/qoui95yKpocuufnkshAt5+M+c6NE3K9QYocc9
=2E..
> -4kvwC/yGVwknn3yTQp9whof25KVlUiHhSPIHHl2WiIzJ0NYJHlFc+BjXOXQBfbdc
> -Nq9SSh7UpNLEKNqNwt9XdxuY0mKB+5TvUCQnoq/sl7p4/fY8F0we3Hw2e1+8Oxvf
> -DtDBeHl2aZ4q8DD712KHnYbi8jYRUl+NdGKOQOy0JnQU1r4TzNBrVA+w
> -=3DII1B
> +Wagr24U=3D
> +=3D+x9p
>  -----END PGP PUBLIC KEY BLOCK-----
> --=20
> 2.50.1
>=20

--=20

Joel Granados

--mn2s52tv6hgppxcl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEErkcJVyXmMSXOyyeQupfNUreWQU8FAmiUt6YACgkQupfNUreW
QU9zLQv/aRJ2+AbgL4WSfuBAXAXRJhjU5i7CKmICMwNd4a0AAlKxIRWnyv0+j13W
5u5UnqaBRh1MJ+KzcUL2Ohp/0MJKo1Rb/G+pCMlpXAX8JpK6t/hIUL/HM5+wIpiT
Gf29+eHvyOncGbfpPejClGXAPbbGBGqGo+oerlFuPJydF1iWGUglYynkgwOYQzAb
SEAajqNakNfExjwQNg6UGmK12DwE7rMBlqu8E9zXymT/PtShNJhaCgwEN98B5Wp+
JTPkxTV6wz/IE5vpsIimyI76d7Je3wUH0WgchCiYXJoZcyI5Jya13UhN2vbENvnm
wMAd2mp3sOR9em0R16uShMe6wLy4Ca/hOieQOkL+BrwKcEoDYnIzD1tWVbONwVno
cO+SIVPjRIRduk4HLkAocUjfG+THX+Z3tkDOhGQ2QXZYHXuZrxMecg3IBub44p03
c4UIgfMTNCTmzMvUclwqL6WM+IH47G7UTsliSTFE/Y0/tZbMKPnGhrNtYiVEDyLZ
cLzGhJsl
=LVcl
-----END PGP SIGNATURE-----

--mn2s52tv6hgppxcl--
