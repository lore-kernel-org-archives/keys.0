Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4C3D2F1
	for <keys@linux.kernel.org>; Fri, 24 Feb 2023 04:05:56 +0000 (UTC)
Received: by gandalf.ozlabs.org (Postfix, from userid 1007)
	id 4PNGXL2Xrtz4x7s; Fri, 24 Feb 2023 15:05:54 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gibson.dropbear.id.au; s=201602; t=1677211554;
	bh=sCkK32VO4JtyD1LHfT6yWiBKgGYeFrhb+n9nld2mV/o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FFdQVd6qdV+xCns7mCd6pNCGi2Xfz0OJJTfWxXbgUy3U5DhI5X6gVc0g6cIkpBQtA
	 3KY302mjrsCmjNhvfe2oLawEaWhqe5V0AJSNvbkFkLh7sjJRqBfmHCVNgB2eQvA0gL
	 H5mGG0+GVsdyQPFA5q2UA1d8LjJxG73GEPVgzT1U=
Date: Fri, 24 Feb 2023 15:05:08 +1100
From: David Gibson <david@gibson.dropbear.id.au>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: New key
Message-ID: <Y/g3dB5RZq7bqmu9@yekko>
References: <Y+TQqjEzhv0P1vwB@yekko>
 <20230209204114.ynajycsawbmjugxj@meerkat.local>
 <Y+mh9AALS6uCC/0A@yekko>
 <20230221222821.puatf6y3f4dnlz7h@meerkat.local>
 <Y/WPOQJ9/JbkaJT4@yekko>
 <20230223161925.pzxxkqsbmxjvumct@meerkat.local>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GigN0iaixW4NTAl+"
Content-Disposition: inline
In-Reply-To: <20230223161925.pzxxkqsbmxjvumct@meerkat.local>


--GigN0iaixW4NTAl+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 23, 2023 at 11:19:25AM -0500, Konstantin Ryabitsev wrote:
> On Wed, Feb 22, 2023 at 02:42:49PM +1100, David Gibson wrote:
> > > Please resend the key (as a follow-up to this message is fine). Keyse=
rvers are
> > > not reliable these days, unfortunately.
> >=20
> > Ok, included below.
>=20
> I have added your new key to the pgpkeys.git.

Great, thanks.

--=20
David Gibson			| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you.  NOT _the_ _other_
				| _way_ _around_!
http://www.ozlabs.org/~dgibson

--GigN0iaixW4NTAl+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEO+dNsU4E3yXUXRK2zQJF27ox2GcFAmP4N1wACgkQzQJF27ox
2Gce9A//SHpMWivqEP6X8duHZ8qi5SFLPhNVJDZST0xGhTSnxebcTCHbk+3Qrkjk
Mct4SJw8cuAtsQd60TC64MxQOojY0WWUa8B4Ckin7auYddbVsUJbq4RHAXyXMWU5
sV6UWDZGTJ52gv7ANIrcHU29jdxWzQHPUe1Rwd/Vq92I8XMPZvbiNohgn2jCbVEC
cq9azYErMx7Wx2L7dbr9URkzvjZ8CcT1Y5Iokswrg3/0Q4z+Kvy23fpclRWiOv4u
K7vzKUEsuQKbzLUj8tGbHph+LWXROkjKZlH/MDUaY1jRCR4GPg1xfZFuYQFW4hEH
IvzfZtAAcDGC98K9p3ilTs7Si210+TmtyHvu0DBKwhtyWXvcxiuTF0Agk4WQqf+t
XF7mirOgg2wjvWMdbBaLOeargwDmDVIiWanzmNb0YHv9fV0ZkZHbVZMeqM8JTfea
vVi6HMrkwm9K2lw+PHTB6FhJvFiP2gjP8uJNz15GHptlDAW9wYLY/PcWBbmk5HP7
2+pQuucPeYg9ugXOU7A+FL8WnmX9efmLCuANss2NCDSQi1DNdzS4EovsqcOspKhl
UeIPIydq707MNyxxlPlm/WVbTe5OoGCQMC4yXZMsnIvSfUqEu8zK1nvZB2plwRZO
DmSK52fN26iJvfZ04mm+wZGu1WqKRdLoIGbBueQR1ZbS1PSENTQ=
=qPzi
-----END PGP SIGNATURE-----

--GigN0iaixW4NTAl+--
