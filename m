Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F63D2CA8
	for <keys@linux.kernel.org>; Tue, 26 Oct 2021 07:25:26 +0000 (UTC)
Received: from ktm (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 93009831E9;
	Tue, 26 Oct 2021 09:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1635233123;
	bh=hV4nU0GNFmfXhjfUYT7FyLhk/wsI1eDjvKDyc28M4q0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=rar3sHstbtpLlXaVONTA1NydXVaMQW4lcfDds2TTva4u+JuR9mbSFEvMEReQuQZA3
	 pepPL2sLgEIiRMZoclWgeRmP3MGnT9bJCJrw6qXs9ErzqABou9VK85T6oQzpePGx9p
	 UiPm6UoSZBPvRUUEa1e8f8XktLe1amUkCtdnsL4ANb7i3djWh+LpSQhLo+wxYqIcEe
	 dK/2fOlDZ5/O4jsdBVo06XbRIAcDG05Lv2GrIVhtIlzVKq8aOedVKFS1NA2sgbfNy5
	 sEL4rgT8ZRlbQ0R7OhuOrTDxBo824Zl6G02PAInYg/YzSvGNrKHaY8+Z2H+B4OPze8
	 MWMOvH2CP1wCg==
Date: Tue, 26 Oct 2021 09:25:17 +0200
From: Lukasz Majewski <lukma@denx.de>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: [gpg] Public key for Lukasz Majewski (with 2 signs)
Message-ID: <20211026092517.529a6c75@ktm>
In-Reply-To: <20211025204135.dz7exmd2nn4gshbt@meerkat.local>
References: <20211023163459.1477792d@ktm>
	<20211025153710.oigp5xhsjio3dl6d@meerkat.local>
	<20211025202226.0e893e32@ktm>
	<20211025204135.dz7exmd2nn4gshbt@meerkat.local>
Organization: denx.de
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/WW393hKuzf1qGyU060_APYr"; protocol="application/pgp-signature"
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean

--Sig_/WW393hKuzf1qGyU060_APYr
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Konstantin,

> On Mon, Oct 25, 2021 at 08:22:26PM +0200, Lukasz Majewski wrote:
> > > I see a signature on your key from Krzysztof Kozlowski, but that's
> > > the only one. Do you have additional signatures on your key that
> > > should be present? =20
> >=20
> > This key has also been signed by Sylwester Nawrocki
> > (4d5b20a7809c7a8b):
> > https://keyserver.ubuntu.com/pks/lookup?search=3Dlukma%40denx.de&finger=
print=3Don&op=3Dindex
> >=20
> > I thought that it would be enough to have this key visible on the
> > keyserver.
> >=20
> > Shall I do something more? =20
>=20
> I was able to grab the missing signature from keyserver.ubuntu.com.
> Thanks!
>=20
> Your key is now included in the keyring.
>=20
> -K

Thanks :-)

Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/WW393hKuzf1qGyU060_APYr
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmF3rV0ACgkQAR8vZIA0
zr0dHgf/el1b3GaJ6kw0E1dsx/2ISSRQOcvARFs8LRRovP2KAUOs0ah0MKrHD79v
NRc1pXJyLti/gXYnmJVS9eS/xwJgJKwrHIQTN9+tVjJgh3Oy4LHT+2D75p/A5WDm
zofAWVaqj0U8qosJDcz2QKKoHd1PhhZaVeQUp+0uRsmTjCJFYJbD8/grdeUjmu2f
2EoYRnNDWUC04yHvizJLOodQCf5Us+gjeayop8QkJ5pNJ7P+HUUQiuaio+JwDTEf
3/FtGkWCbz1ufJs+LhchfibUbqNND+mo3XNiKZTVS40pthNMiHr1EPYEV+kWZCKZ
UWllFVj/THJ3Wq7OEaslaN3uPr0V5g==
=SLlT
-----END PGP SIGNATURE-----

--Sig_/WW393hKuzf1qGyU060_APYr--
