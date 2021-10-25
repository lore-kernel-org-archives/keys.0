Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7117372
	for <keys@linux.kernel.org>; Mon, 25 Oct 2021 18:22:43 +0000 (UTC)
Received: from ktm (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 9CE18834AB;
	Mon, 25 Oct 2021 20:22:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1635186154;
	bh=EWKGUiq5XIwh1GgJSPtZVytw3/bOokptCwrU7zKRvhs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=MWiZxsjtkANJ8TZy83Z2kEqHvsgjB7vhFFvjdW/svH1X3y7ZqLrpyuukKIQZcUGJQ
	 J9Bz4FDRWSf0UwwPQouZRT5fi0PR2Ub95LyvhUTKqs2bwxEow2pGjpN/V7ajJPZoN/
	 iWiC+rsDsWdwp4gN5NQIaGtGAYGZpOywqtBctWIBQh3CFBIaGJz9JaL06EHiksRyXD
	 x3SGyRr9QXDONHLm6xhzkJx/tG5m5WvrNwasIiXVOyXl2HWMZO9N5gIpFMq6ptSOzd
	 Tf3PGExMB50anGecMoPQd5SlJQ1aRWavpBF29BhDUrIlO/BjNDbD1+2tUKjVlPwb3X
	 PJ9IgoetNchzw==
Date: Mon, 25 Oct 2021 20:22:26 +0200
From: Lukasz Majewski <lukma@denx.de>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: [gpg] Public key for Lukasz Majewski (with 2 signs)
Message-ID: <20211025202226.0e893e32@ktm>
In-Reply-To: <20211025153710.oigp5xhsjio3dl6d@meerkat.local>
References: <20211023163459.1477792d@ktm>
	<20211025153710.oigp5xhsjio3dl6d@meerkat.local>
Organization: denx.de
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/bSlKDTufR.O9KfFV/4f0Kxv"; protocol="application/pgp-signature"
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean

--Sig_/bSlKDTufR.O9KfFV/4f0Kxv
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Konstantin,

> On Sat, Oct 23, 2021 at 04:34:59PM +0200, Lukasz Majewski wrote:
> > Dear Community,
> >=20
> > I would like to share the *.asc file for my gpg key. =20
>=20
> Lukasz:
>=20
> I see a signature on your key from Krzysztof Kozlowski, but that's
> the only one. Do you have additional signatures on your key that
> should be present?

This key has also been signed by Sylwester Nawrocki (4d5b20a7809c7a8b):
https://keyserver.ubuntu.com/pks/lookup?search=3Dlukma%40denx.de&fingerprin=
t=3Don&op=3Dindex

I thought that it would be enough to have this key visible on the
keyserver.

Shall I do something more?

>=20
> -K


Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/bSlKDTufR.O9KfFV/4f0Kxv
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmF29eIACgkQAR8vZIA0
zr1rCQf/amEMViiQr143TSIyFbE4QGYjCx45bgJAM/zTaf8JCcz+n1upEMJDxUxq
fCBeyqNf/78NCm5v5eN6WIRdBWx9bcLYxk+lge/n8xKOKdv4oNyGYdmAOpRxPQpA
+KCw/Z8MyZXsdFeDmqVmpVem1BeqfuYSv3Dlc0tdqb2UM+342WNWHWkbuYBKsDQa
/x8dy7l+DL2WNxKRkG64TbK3pXO4RLRwc2x7cXrN0OQyd5d9RvOHoU42TGtqZpQk
n3KKlf4vzrbT5w4cePgSiDkOjzACyDa8FwhyuRkvVwLI1yBy7tnd2rT4S6G8DL13
rOvZar3vvbo4gidGwCqPpzBBCEzeeQ==
=FXyO
-----END PGP SIGNATURE-----

--Sig_/bSlKDTufR.O9KfFV/4f0Kxv--
