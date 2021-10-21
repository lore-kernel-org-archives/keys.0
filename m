Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEF12C81
	for <keys@linux.kernel.org>; Thu, 21 Oct 2021 14:28:59 +0000 (UTC)
Received: from ktm (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id BBCEC80C72;
	Thu, 21 Oct 2021 16:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1634826536;
	bh=jR9jHh/PDOX6nwK++8bCxO7SnWhiyhVINvglpDh6yoA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ImxAh5sbygBi8Rfx9Djwx29U+NmKUGEkS9yxXS8j+MvB5+7l4oCB1nnxCs5Muak0L
	 nIQvKqaUsTenbe4TbmPVXfxep9bmrm0tJ+fkVIjOTxO+8FbGBvM2SE0NTszhq4iNls
	 69n9er/aPItmq5RB4ajbgwxGdalUdDscGJ8mNFA5rTco2mO06DOxvHgTjceJ7hFKII
	 jkCDNBvO7CmsY4Kxp1xXf41yiqTA9+pAZJe9kfL11GL4E+5a+3yjIvIT7UaJOitwPd
	 4GsxW0QSI/jQDFcZN7Rc2AL8NwJjOzbBcxREPs583rfh82AGM610V7C62AEtCIdhnP
	 tL53HeMS+GQsQ==
Date: Thu, 21 Oct 2021 16:28:49 +0200
From: Lukasz Majewski <lukma@denx.de>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: [gpg] Public key for Lukasz Majewski
Message-ID: <20211021162849.75b4b5f6@ktm>
In-Reply-To: <20211021135558.kir4d72ijpefrb7u@meerkat.local>
References: <20211021074108.6f028961@ktm>
	<20211021135558.kir4d72ijpefrb7u@meerkat.local>
Organization: denx.de
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/K+npvwVmN=k/hZQkS0uZTKa"; protocol="application/pgp-signature"
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean

--Sig_/K+npvwVmN=k/hZQkS0uZTKa
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Konstantin,

> On Thu, Oct 21, 2021 at 07:44:15AM +0200, Lukasz Majewski wrote:
> > Dear Community,
> >=20
> > I would like to share the export.asc file for my gpg key. =20
>=20
> There don't appear to be any signatures on your key, so we are unable
> to include it into the keyring. If you would like to have it
> included, please get at least 2 people currently already in the
> keyring to cross-sign your key.
>=20
> Regards,
> -K

Ok. Thanks for info.

Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/K+npvwVmN=k/hZQkS0uZTKa
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmFxeSEACgkQAR8vZIA0
zr332gf8DUE9i0DWpIjSwuNYmvKt5eQySTfJjtBUUjSLp9N5J2LAwsEMt+6Xs7pZ
KZU+35e1HNkkTMgbNifzp202PwIdl3H2qNhfbtW9wwPMIIpLhVc1wn+iuRQ9OOnK
vlNqa3kK7hAZJR3iF799AvusEQeg2pJARy70bbx22VBsPoLPziJQnB8wPi+UKzxs
BcB4S9noOlPl2QuLnMs4XWoVwOjjP/tdwAKmNFxYOHbEOaQZdKr+GYPxVlrjDDy+
lkL3tylZ9+C25Cz0ZaeHmnq79QBfIBqfBeuqHIteDQUI8kjI+HqW4zZ9wvg+88ya
NDjHk3OUk4kgZJXNb0p0Vbg3DPnLnA==
=kEK9
-----END PGP SIGNATURE-----

--Sig_/K+npvwVmN=k/hZQkS0uZTKa--
