Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319DD17C7
	for <keys@linux.kernel.org>; Fri, 24 Feb 2023 04:28:49 +0000 (UTC)
Received: by gandalf.ozlabs.org (Postfix, from userid 1007)
	id 4PNGtN5nQvz4x5X; Fri, 24 Feb 2023 15:21:32 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gibson.dropbear.id.au; s=201602; t=1677212492;
	bh=GXlvV0GXUs+DZ4aCHiAt8a8qipiJcSTmtGsuk1UDL7k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S8DN39OW8bgCHmyRosClOd8mcdjsIEsdZhfiQXwERMl8qnMjM432zdrn8p+JSKlaz
	 mUTzLRowd0eXvRHaTAqhaAHb5N0hd+1p+KQqAYamW1QE+NWCBMdyHNLK8TwtqmnyYB
	 +2QZq5e+oJeIoQ/RYeKz0sOJI8f8Xu3RyGE99dmw=
Date: Fri, 24 Feb 2023 15:21:12 +1100
From: David Gibson <david@gibson.dropbear.id.au>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, b@yekko
Cc: keys@linux.kernel.org
Subject: Re: New key
Message-ID: <Y/g7OAJShy0chmQj@yekko>
References: <Y+TQqjEzhv0P1vwB@yekko>
 <20230209204114.ynajycsawbmjugxj@meerkat.local>
 <Y+mh9AALS6uCC/0A@yekko>
 <20230221222821.puatf6y3f4dnlz7h@meerkat.local>
 <Y/WPOQJ9/JbkaJT4@yekko>
 <20230223161925.pzxxkqsbmxjvumct@meerkat.local>
 <Y/g3dB5RZq7bqmu9@yekko>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pJ+80K/AG3yGNpeR"
Content-Disposition: inline
In-Reply-To: <Y/g3dB5RZq7bqmu9@yekko>


--pJ+80K/AG3yGNpeR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 24, 2023 at 03:05:08PM +1100, David Gibson wrote:
> On Thu, Feb 23, 2023 at 11:19:25AM -0500, Konstantin Ryabitsev wrote:
> > On Wed, Feb 22, 2023 at 02:42:49PM +1100, David Gibson wrote:
> > > > Please resend the key (as a follow-up to this message is fine). Key=
servers are
> > > > not reliable these days, unfortunately.
> > >=20
> > > Ok, included below.
> >=20
> > I have added your new key to the pgpkeys.git.
>=20
> Great, thanks.

I tried to kup a new dtc release signed with the new key, and it's
still failing.  Is there some extra step that's needed?

$ kup -v put ../dtc-1.7.0.tar.gz ../dtc-1.7.0.tar.sign    /pub/software/uti=
ls/dtc/dtc-1.7.0.tar.gz
DATA 209620 gz
SIGN 833 %
PUT /pub/software/utils/dtc/dtc-1.7.0.tar.gz
FATAL: Signature invalid

--=20
David Gibson			| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you.  NOT _the_ _other_
				| _way_ _around_!
http://www.ozlabs.org/~dgibson

--pJ+80K/AG3yGNpeR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEO+dNsU4E3yXUXRK2zQJF27ox2GcFAmP4OzIACgkQzQJF27ox
2GfArA/9Eb/ygEIugsgll7eVaqSPpytDui1U0O8r6ZqmNLCCR8pDTf5sV8gCzOdJ
GD/Sv3FxMT86htfWJpy0q33g3YGSv2XF1WrcUg+kRsOZvjvbpgGbOnxiuOUlQWL0
wGmr17SwQ5tZ4uAO2FGBWcml8lUUInVHmVv0tMHs72ZSsUALzdRVHAgqcWpFx+n0
F9aldSaI5tMle7KXRk/6OYwuqHs3vX50PnmtO/Oa2cqUxOXGjIiKPiLiM82x0dPY
pM1v2OibltzD/OU8r8uz0jkg/+xtz4doflN3gSWxzinWJ8234t1wFhJQtQvHpxtS
IhW6mR90k0/rEuHbCdBtfNZGqow6EJAwS2tkh6DI4mizfeJDo4GkANUoYUrFYaC+
RDlUPU3ltfr8ukZMDIpZ/uUkXckadQNiT9AU4+3gKZIf2VqtZo3u11P8x0Ek+Qgr
jb5ZcmDGcZ+8fGZ6e/pWpSxgk8iJTjq8ypgdcPwgcaxFlGrWPpV+lBYX5dePZwN6
YR+2StVZt4KP8N6VS1d7R9jA3hoCw4hE+SyQvnEXJpIdEYNefdt2ZE6l23IdtY3d
4XslKrsBO95UpP4YhCoBuniIUPzbZrs1U5du4aBIzEpU+gPAUKUEYnzwSjngjChW
/pepA+9p1RhXZ8Um9zQXfBemrkX9jYrzvZpJb3sjan88PugDMNI=
=bHzM
-----END PGP SIGNATURE-----

--pJ+80K/AG3yGNpeR--
