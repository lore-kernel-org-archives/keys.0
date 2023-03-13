Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [85.220.165.71])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED6FA3C1D
	for <keys@linux.kernel.org>; Mon, 13 Mar 2023 18:01:30 +0000 (UTC)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pbmUC-0006lT-EC; Mon, 13 Mar 2023 19:01:28 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pbmUB-003ttI-OU; Mon, 13 Mar 2023 19:01:27 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pbmUB-004bvP-5X; Mon, 13 Mar 2023 19:01:27 +0100
Date: Mon, 13 Mar 2023 19:01:27 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: key for u.kleine-koenig@pengutronix.de
Message-ID: <20230313180127.nz2rwcces2q3gds5@pengutronix.de>
References: <20220610095457.cs7uwg6vp3xwc4hb@pengutronix.de>
 <20220610171325.7iwojo4p5xw4iwbg@meerkat.local>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cxphdt4raxgiva6i"
Content-Disposition: inline
In-Reply-To: <20220610171325.7iwojo4p5xw4iwbg@meerkat.local>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: keys@linux.kernel.org


--cxphdt4raxgiva6i
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Konstantin,

On Fri, Jun 10, 2022 at 01:13:25PM -0400, Konstantin Ryabitsev wrote:
> On Fri, Jun 10, 2022 at 11:54:57AM +0200, Uwe Kleine-K=F6nig wrote:
> > Hello Konstantin,
> >=20
> > my key is signed by
> >=20
> >  0BE9E3157A1E2C64 Michael Grzeschik <m.grzeschik@pengutronix.de>
> >  2B5EE211C58AEA54 Marc Kleine-Budde <mkl@blackshift.org>
> >  6637D326999B862C Philipp Zabel <pzabel@gmx.de>
> >  7091A8D9AD5FF600 Florian Westphal <fw@strlen.de>
> >  E289A1F4351A51B3 Oleksij Rempel <linux@rempel-privat.de>
> >=20
> > please add it to the pgpkeys repo.
>=20
> Added.

While archiving my old mail I stumbled over this one. The commit you
mentioned here is 4b7d51d6cd18 ("Add E2DCDD9132669BD6 (Uwe
Kleine-K=F6nig)"). That commit created a file

	.keyring/openpgp/kleine-knig.de/uwe/default

I don't know how this .keyring directory is used but I wonder about
the "kleine-knig.de" part. The (nearly) matching uid for that is

	Uwe Kleine-K=F6nig <uwe@kleine-k=F6nig.de>

=2E In transit this is usually encoded using puny-code which would make
that

	uwe@xn--kleine-knig-yfb.de

=2E So I wouldn't have been surprised if there was a file named

	.keyring/openpgp/kleine-k=F6nig.de/uwe/default

or

	.keyring/openpgp/xn--kleine-knig-yfb.de/uwe/default

but the filename above looks wrong.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--cxphdt4raxgiva6i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmQPZPMACgkQwfwUeK3K
7AlJEQf+JT9dPwThu10I37GYHn30BTi6CMEqFXW+qEaEbSEIJnPhpGOPvZ5SXdyi
U0EGrpOmMUiTxEC8c6HW/6sutg9aOZTRb2opjt9PJloJdU8HUFKcLxuL+gkBFbZd
T5UKicjUIQY48sX+da8STQ+sKkQ9I780m9bHXtq1aQVU0uqRko+X9EpaHD2j1bUb
yvF8POvQzeWdLhueub3a+BTusMNjzWpNKHbM6i7Tv5YWAlY0Fj7CXUbbze0RCF21
Wxh41/4YjWZ4kJ6VM5lc2BE1n9zRITSOFlcjH5SbDGcpm4TOUevLDrQske41XDAJ
WvUmaBuaLTzzNSrzw2tBBFyOB8u3Dg==
=0J5f
-----END PGP SIGNATURE-----

--cxphdt4raxgiva6i--
