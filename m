Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2542220F3E
	for <keys@linux.kernel.org>; Wed,  6 Aug 2025 09:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754472040; cv=none; b=nZPnM7o4QHQQGAktVFQNbseyOlVcEkMFMa8bvoEw6kBQL2scnMOXx+iSrVAE724nn8XfsvPCnC4LBRR4+k1oBlIdc1430g0QNpcqw1BqQoY9zpwO7NyfFNaFtZZyAMLIIhNIrh35qGcnf1hwCcm9XtL9D83noYvSd8TPtosd10c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754472040; c=relaxed/simple;
	bh=bXyDPmRbirUM79Fgy1dzU7tbYDvs7f74TNuHSHZQ5fU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QuXPKZnB8fqxxKscZo8vbTWaNHFBb0kG7A7/jDojxQKmEKjphPMaGTHDpb0/0GqEGPJWdjnZZZNAYB6CyCCkDBI4DZI1O0L5vZf41vD6pJ/2kV5eIV0Wtyzh1Gf4Boi9k9r292bXIqbhXR3ju08JyAYVeYgzKRV0nLg7aojqXeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUR3b70Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUR3b70Q"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CDFDC4CEE7;
	Wed,  6 Aug 2025 09:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754472039;
	bh=bXyDPmRbirUM79Fgy1dzU7tbYDvs7f74TNuHSHZQ5fU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BUR3b70QHedY/RaH0vIS04GrsRuz9+/VG5ysGgmvcja6I7Y/P/e17JobPGqTnOF/+
	 gPRCb3KESuBx31YIqHVu7W17V/3JpuaZR2LSFskwUNf/zlAZFIaegmOwA7XOQirO0C
	 kC91ghtPNjENGuYnhpEawLUWWPD7rEr3P+EKkKKtDtkg9zcYVJeoHrpC7YpIk29NnQ
	 E5tr8zjyq+UDnb+mCW7kZDON0ZFPIjt1aA01U5n3m1Fq9/2Ebg/MYIzjDn/S3lTA96
	 npufkLrc9hapHh7kazP/Zk5oAeXj74bDjQGxWhLDO+MA9sg/3llXi/dLT91XrAFBcB
	 rtNLVynP1OkYw==
Date: Wed, 6 Aug 2025 11:20:34 +0200
From: Joel Granados <joel.granados@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Joel Granados <j.granados@samsung.com>, keys@linux.kernel.org, 
	Kieran Bingham <kieranbingham@gmail.com>, Kieran Bingham <kieran@bingham.xyz>, Imre Kaloz <kaloz@dune.hu>, 
	Imre Kaloz <kaloz@openwrt.org>, Eric Dumazet <edumazet@google.com>, 
	Eric Dumazet <eric.dumazet@gmail.com>, Eric Dumazet <edumazet@kernel.org>, 
	Pravin B Shelar <pshelar@nicira.com>, Allison Henderson <allison.henderson@oracle.com>, 
	Joel Granados <joel.granados@joelgranados.com>, Harald Hoyer <harald@hoyer.xyz>, 
	Harald Hoyer <harald@harald-hoyer.de>, Harald Hoyer <harald@redhat.com>, 
	Bothersome Borer <bothersome-borer@kernel.org>, Confounding Cockroach <confounding-cockroach@kernel.org>, 
	Frank Rowand <key_111017@frowand.com>, Frank Rowand <frowand@gmail.com>, 
	Frank Rowand <frank.rowand@sonymobile.com>, Frank Rowand <frowand.list@gmail.com>, 
	Frank Rowand <frank@frowand.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
	Aggravating Aphid <aggravating-aphid@kernel.org>
Subject: Re: [PATCH 0/7] Remove expired keys, 2024 edition
Message-ID: <t4dynynvvtujdi2jz7jo4cyo4z6z5cxqh5swsdn7lmsa3fyq7n@czej5r32ngrl>
References: <CGME20250805075932eucas1p17f15688e91b34f617fef8c2316d92a80@eucas1p1.samsung.com>
 <cover.1754379198.git.u.kleine-koenig@baylibre.com>
 <mx4t2fyuijj2einu4eibez4tjnrxpdo7ofutb7hh7ddmi7636i@gowa3on2bvgd>
 <hd2ahm4vhilzz3yuus63v3cbpf7zgxrl6uwtarjyjt72yxogt6@h6ytbjcygbev>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="taquaq7vmgiozrtt"
Content-Disposition: inline
In-Reply-To: <hd2ahm4vhilzz3yuus63v3cbpf7zgxrl6uwtarjyjt72yxogt6@h6ytbjcygbev>


--taquaq7vmgiozrtt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 05, 2025 at 10:57:55PM +0200, Uwe Kleine-K=F6nig wrote:
> Hello Joel,
>=20
> On Tue, Aug 05, 2025 at 06:42:25PM +0200, Joel Granados wrote:
> > On Tue, Aug 05, 2025 at 09:59:01AM +0200, Uwe Kleine-K=F6nig wrote:
> > >   Remove expired signing subkey of Joel Granados
> >=20
> > Thanks for this. I had update my signing key but forgot to remove the
> > expired one. I use my updated Signing key that expires in 2027, so all
> > good from my side.
>=20
> Maybe I state the obvious, but to maybe save you some trouble: You have
> to revoke the subkey if you want to get rid of it; not delete it. I
The change that I was thinking was actually updating my SEA key to just
S and pushing it to the pgpkeys repo. So I had no need to revoke that
one. Commit "a23ccb8 Update 5895FAAC338C6E77 (Joel Granados)" in [1].

The expired one came in on an update from keyserver.ubuntu.com Commit
"50066c0 (HEAD) Periodic update from keyserver.ubuntu.com" in [1]. And
that one was probably an inadvertent sync from my part since I try not
to use the keyservers. I'll be sure to revoke it once I have access to
my private key.

> didn't test, but I guess after the patch the subkey will be added back
> on the next keyserver sync. The same would happen to you.
I think you are right. But I have a question here. What key server
should we use? https://keys.openpgp.org/upload/ (as described in [2]) or
should we use keyserver.ubuntu.com?

Best


[1] https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git
[2] https://korg.docs.kernel.org/pgpkeys.html
--=20

Joel Granados

--taquaq7vmgiozrtt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEErkcJVyXmMSXOyyeQupfNUreWQU8FAmiTHlUACgkQupfNUreW
QU8yVQv/WzXO+iNpbpc7flyS9ocYiOzYTlRVTb4HvQAKj5g65vROZa/ysM2pOgFd
LKNY8f9ouMG45e7Cr0VOxPEdDZNLMGPilneaIwm1nDvj1bEL23uYTWrQPMGKZDeI
83jxn7XU2NhGdzJ/MKz+CcmbsjZkDw6TUKs5jJSrVJ2yTfAaBV06J74i8xfrOnHI
HkjB7d094cgFIIQi+1cp3fMHskJlxFEJg3c2cz+JGJqcW9ngtKHAzc7fFgMA+23/
sZOKhJY+6DEW0mgtEBaY+xJth8qh2sVnS/OLt+K8DDrmYPrNpKixlr802Jr7rtip
EbXKfRSY4bjN+sMDHYmN2xmD3sieVO4geyamg3kLvhIEr/mdPkU+i5BvSr7PUzaA
XBJNwwGFLVOuQ6OUbshWENUUAH05M37MSHH8CpQBl14Y6SRuD3GzLu/Gmw299MMl
hEY+hvER93sJYzh+gPcT249zJhIFKfVw+Bse/rVUDgfP3WdjX+YoEQzCSx5Pm4Cm
PUtOiX/2
=Kp+8
-----END PGP SIGNATURE-----

--taquaq7vmgiozrtt--
