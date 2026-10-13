Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB4D4CDDC2
	for <keys@linux.kernel.org>; Tue, 13 Oct 2026 10:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791888677; cv=none; b=hzmbqjSW/n2GgZUYQTCJLIdoc5mBgICiMy2t9X0Lu8nPLsTS2QK5xgBe2r4/WgnZmJf9QoXfrn49E1x5zXiFyzk4tQIm5TGr9frL+4wx+q8l9HPzXfepitaoq2GQY4ZW0vrEy+tTFwqOwx+tsP/5u2aU1xZfNMBUBB2k2R1CGxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791888677; c=relaxed/simple;
	bh=kRkCCb/CR7AepaTtfdR1npMc+hcGMkneM2Vz0B/I23g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tZe8oaHxkHC+b9ohmqwTwC3y78dI8WWafa/DUvCDx2tKI+SlK6U8F/fd0Jt1FeFwGoQuIcCc3zPkXi2PsFLYq9Kdg+TNp5nfwmLnJ3Jntao0DMohQO8rQZ1hDre1QW9y67VCFcH3sWURSzuDvNsXOawKN9bl1jhNSyPAvgEivok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9+6iDUY; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9+6iDUY"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 245191F000FF;
	Tue, 13 Oct 2026 10:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791888675;
	bh=kRkCCb/CR7AepaTtfdR1npMc+hcGMkneM2Vz0B/I23g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=M9+6iDUYYT2hiqzzq0PICykevtg0Ot6/nXacXI1ylUtuNwK0ZmlJqvd8qBQgs4NTE
	 nR3y18o/37+hbR0y8fzwVRdv2iaohb/0zte8Q26yf96X8oIEMvD9Cy8Xu/kmmm7kpX
	 OwBGaOugsCprcZ28tdn4sv9iDJYqWhjkDIlTNS5n8ETWBFa6zD4KwFry4r36gXpTQd
	 j99OH0U1wYr/8VLkAR92KsHiEenktfP8LNr6cbXeaVNED5pip4Z6oCeRBB0dYHiXsC
	 1VjW9fwSI42dgBnMqxAGilXfD48WezswjkBfCA7V9XvASe3FGarhOu917E1DTCB9Y3
	 tFIhu93Kmn76w==
Date: Tue, 13 Oct 2026 11:51:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for me
Message-ID: <48b890a9-1f26-486e-9a32-3d20829f7db5@sirena.org.uk>
References: <31c98cd5-bea4-428c-950f-d38a43709245@sirena.org.uk>
 <as3BnOFlaS4SCrVY@monoceros>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tvimn7dyo2iBkJl1"
Content-Disposition: inline
In-Reply-To: <as3BnOFlaS4SCrVY@monoceros>
X-Cookie: Some equipment shown is optional.


--tvimn7dyo2iBkJl1
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 13, 2026 at 07:36:58AM +0200, Uwe Kleine-K=F6nig wrote:
> On Thu, Oct 01, 2026 at 04:05:29PM +0100, Mark Brown wrote:
> > Attached as per https://korg.docs.kernel.org/pgpkeys.html.

> The attachment contains two certificates. A dsa1024 one from 1998 and an
> rsa4096 from 2011. I guess only the second was intended? But that also

I mean, I just exported all my keys - I don't really mind.

> has (pre-existing) SHA1 issues, according to `sq cert lint`:

> Certificate C3F436CA30F5D8EB, key DD6A5FE57B78DB59 uses a SHA-1-protected=
 binding signature.

> Would be great if you fixed that. If you don't know how, I'm glad to
> help.

That message does not even tell me enough to identify a problem.

--tvimn7dyo2iBkJl1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmrODR8ACgkQJNaLcl1U
h9Do8gf6AmusZtfAYyKtQ5Lrn8lVdcVyq8oi8aNMvW+NDmf9GKf7YIzpddV8F5O3
Lewwn5/DMFXo/42jjjcKVr34E0YNncERlMKyNBCq0GEgFh2lXdNzSJ73tDJVDbHv
ltpWUTex9ztLqFrfqmnPbJKxhgrmEyejsRFQ5sJIi5XdHLje867K/iXALNmdb+07
0VCt0qt05O2gzUbJGDQA625940D0/WlJbr3lDSZ8y5UTldKv1K8lM5mlE4QuPhvE
Dm8sO875NXrDdVhboH1xU5xPtWdVC/0HaKMTCstIMDj7giQ3Nu3LTJaCOMgVQi2+
yD2XaMqjFq/aL2k80M+6xHAaDnA9ig==
=+k18
-----END PGP SIGNATURE-----

--tvimn7dyo2iBkJl1--
