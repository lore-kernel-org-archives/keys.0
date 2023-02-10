Received: from gandalf.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E919363
	for <keys@linux.kernel.org>; Fri, 10 Feb 2023 00:06:59 +0000 (UTC)
Received: by gandalf.ozlabs.org (Postfix, from userid 1007)
	id 4PCYv608KYz4y0f; Fri, 10 Feb 2023 11:06:58 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gibson.dropbear.id.au; s=201602; t=1675987618;
	bh=51FaRdGW5Fozi9G7RIxmVNVE2tAukW1wzmZ1f8ds89A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D/RectOnzZNjm2bimJvRrUGhMcDm8Fc89MhoedT/v11kvx2h6/kH+r3b07/DtABRD
	 IGBHinpW/yZ1AVAhgT/U2iW4QbZGt6fzsSLkpLO/dveozXXaLlHVNxz2D4VzsZojP9
	 BWUtXF/F0QLF2rUfI3NM4FqypSSCQwAUmJesO69A=
Date: Fri, 10 Feb 2023 11:06:44 +1100
From: David Gibson <david@gibson.dropbear.id.au>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
Subject: Re: New key
Message-ID: <Y+WKlLtsY4RkqEnV@yekko>
References: <Y+TQqjEzhv0P1vwB@yekko>
 <20230209204114.ynajycsawbmjugxj@meerkat.local>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Ydl4DA3240r4t7MN"
Content-Disposition: inline
In-Reply-To: <20230209204114.ynajycsawbmjugxj@meerkat.local>


--Ydl4DA3240r4t7MN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 09, 2023 at 03:41:14PM -0500, Konstantin Ryabitsev wrote:
> On Thu, Feb 09, 2023 at 09:53:30PM +1100, David Gibson wrote:
> > Accidentally revoked the old one :(
>=20
> Sorry to hear that, but as there are no signatures on your new key that we
> recognize, we cannot add it to the keyring. Would you be able to get more
> people to sign your key?

I'm working on it, got my order of operations a bit mixed up.  It is
signed by my old key... but alas only after it was revoked, so that
probably doesn't count.  I should be able to get a signature from
Stephen Rothwell in the nearish future.

--=20
David Gibson			| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you.  NOT _the_ _other_
				| _way_ _around_!
http://www.ozlabs.org/~dgibson

--Ydl4DA3240r4t7MN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEO+dNsU4E3yXUXRK2zQJF27ox2GcFAmPlin8ACgkQzQJF27ox
2Gebzg/+L+ql/AT5EU0HtW41UKxUVfYiVb5hJ49UgiLckjk3At5tzhA7JjMPGpAS
+nB4dlftNIAVocZmVLhKLNM6y4uo3IgwKwt0V5r5XJHw9L/DfHuIlL8676yrj/+O
KilFXWgkPTk8wDJRam9aPTB05A4XetVhZ2UTMU9S9QgsWoRRP4PVN3xgoZdQbuLI
3VWHThkDhKLQAPiaxbGd6s7X3uCaWk/jw9ARZqKog/Q8tCTj1KroT+K5hlc0DdAQ
+Sui14PPxP07OsL9oTkW47Odg2FPk3VnSP3GhUlQzAWoGmzosamFCoDPcc68zHWv
/dWD9Seeic2aw/SYvOrif4yjZoAR8mGP/PiriT+FKRYTvhBMCZNyV1+NkR3Qhtn0
4i5XDPc4qqNBlcH/FyeIyErHPyP1iT/9Dq9ShdBJx9+BtzBS3Cu6uUt9APDd8WU2
mUZIFpZmo1HuAYLEQG2io7Swsy+ajf4qgUKptBgLgHZ4CDs8fqZbOfm04jhFUF7W
QGxgw4vNqqWM+TK/PMfSSIUwAlKfv9HxSV8l1tDrLBvX5VJSDLgn7B1zSGwpzTHG
4hggHxuWsvSgzO6NPxwGQoUQYm6G5GFmsy9Uj2TnBYxGAXxdWo8rAfJovY5MQVgE
vB+1Kz0MZKitrXMjgWkwkHCy1otSrlmdVDpWB6VKi/m/qAr2sbc=
=BzZM
-----END PGP SIGNATURE-----

--Ydl4DA3240r4t7MN--
