Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA51A2C98
	for <keys@linux.kernel.org>; Sat, 23 Oct 2021 14:35:13 +0000 (UTC)
Received: from ktm (85-222-111-42.dynamic.chello.pl [85.222.111.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: lukma@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 1F53080601
	for <keys@linux.kernel.org>; Sat, 23 Oct 2021 16:35:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1634999706;
	bh=uSm6mvp2bod98Vc2imj0NbVpggnde2yfxrOglAqfQvU=;
	h=Date:From:To:Subject:From;
	b=JJTA61fNBqGYrWYFAGPGP4NQgT0oNQ9yU8jo9H3NFWc1C0fCbBurkSOjnnRGBw6FK
	 w5iVwFd8ClNlLC4912AJnjzHTH7v3Up7vMvo+2vL92nL0pdqIS0UeMq+FeTxJjXQJ+
	 stY/EvJct9wYTPKKEqUcm9ryZ2uT1GNkuwXJ9M1t5h65hCNwIomXP2vUxuupIB3u+a
	 8zcSOU9Cpc8AzqUY7gqRFqerMFMcFnEVAzi0/YqFNhPzD9rvU7e8XkF5W5M0by7yHj
	 qNvuy4l6ZDv9AFSTjCBASUs6lcccbjQHrTrpRfzfAYykHzRIcxNpREne263bMRAUAH
	 Fd8h6rAkKQmBw==
Date: Sat, 23 Oct 2021 16:34:59 +0200
From: Lukasz Majewski <lukma@denx.de>
To: keys@linux.kernel.org
Subject: [gpg] Public key for Lukasz Majewski (with 2 signs)
Message-ID: <20211023163459.1477792d@ktm>
Organization: denx.de
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/G0VP=nT9MyB0vx7NFbhqrdt"; protocol="application/pgp-signature"
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean

--Sig_/G0VP=nT9MyB0vx7NFbhqrdt
Content-Type: multipart/mixed; boundary="MP_/+kJjxB0qfeb0z+oCo1UxTjl"

--MP_/+kJjxB0qfeb0z+oCo1UxTjl
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Dear Community,

I would like to share the *.asc file for my gpg key.

Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--MP_/+kJjxB0qfeb0z+oCo1UxTjl
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment; filename=rsa4096-lukma.asc

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
yp2f6S0=3D
=3DnnrP
-----END PGP PUBLIC KEY BLOCK-----

--MP_/+kJjxB0qfeb0z+oCo1UxTjl--

--Sig_/G0VP=nT9MyB0vx7NFbhqrdt
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAmF0HZMACgkQAR8vZIA0
zr1XawgAvekjjGBYlTzt/jzSrtAbpqVpBGPO9XNQXUM+kHBziag0Hc2f3bonG0vs
bcIO58x6sVI0ydgQOreIy4hYtifSYfAg+uXQGa4BUl/wBSjyd0jbXOCFRWElULCP
xOpJU0QxHaxHRAaQhRESaOZZ78Ux5EF/lTrjn7g6sIYyouc7QotKcv/6J/tAa3tZ
n9Mm7Oaz+Zz88Q3dJAdo3iov0H69OmuoiCndu3GPyqHWSVOXm2A2y0bqO40865s6
mLNhBC0LS8xvP/JNJ0FVn7y33dfSi6HjFzonQrQc/RSXQQZdSnD2rXY0Eqb4jGMe
6NBz+GJl7Kra8Z5FS3xyPJDUTfNj5A==
=F6iS
-----END PGP SIGNATURE-----

--Sig_/G0VP=nT9MyB0vx7NFbhqrdt--
