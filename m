Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CF419D8A8
	for <keys@linux.kernel.org>; Wed, 18 Feb 2026 15:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771429053; cv=none; b=hySFXPYt5HN1eCkj1oJoAc5tpRoSlgVSYVi7FO6Q+EJ6Cz38VAhlqZAPm10os3V/ARd067tPDW4uk6Jn+XQEFCc0iFgtB5PAA1a3otqndbGX5SNk6Fi6QP8Iq8hp+lgCM5YM7WZzth57rzDt+Mp9ky1Kv4MEn4AHCP7BZXrzCiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771429053; c=relaxed/simple;
	bh=czTvS5ZzW+HSBpUUXgafPo3zMhvlzWG6mnxN3AHHgn8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AukzPGK/DjrFElHdUl5SW6ejeOjClwempnQ3HhN/71ck5CEYVFOq+BoFRkdS33cKcRImrvEgmekPcQ3M7uLkfZ5P+RD8WS6kKPqzr9RryD6nC9kls806wPr1Q0LndpEbdC1tP8DTVbZ3bF8w0VfPu468CJ8XrNpuPlPYV87IJ1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1vsjcG-0004pl-Gs; Wed, 18 Feb 2026 16:37:28 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1vsjcE-001Qsg-2T;
	Wed, 18 Feb 2026 16:37:28 +0100
Received: from pengutronix.de (p54b15bf8.dip0.t-ipconnect.de [84.177.91.248])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id CB4C34EBC16;
	Wed, 18 Feb 2026 15:37:27 +0000 (UTC)
Date: Wed, 18 Feb 2026 16:37:27 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>, keys@linux.kernel.org
Subject: Re: Updated key for Marc Kleine-Budde
Message-ID: <20260218-chirpy-hot-impala-73cf08-mkl@pengutronix.de>
X-AI: stop_reason: "refusal"
References: <20260218-smoky-spoonbill-of-sympathy-360c05-mkl@pengutronix.de>
 <aZXTh_HVEkLBM-L3@monoceros>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="almnmszbuvqt2edf"
Content-Disposition: inline
In-Reply-To: <aZXTh_HVEkLBM-L3@monoceros>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: keys@linux.kernel.org


--almnmszbuvqt2edf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated key for Marc Kleine-Budde
MIME-Version: 1.0

On 18.02.2026 16:12:29, Uwe Kleine-K=C3=B6nig wrote:
> Hello Marc,
>
> On Wed, Feb 18, 2026 at 02:25:58PM +0100, Marc Kleine-Budde wrote:
> > Please find attached my updated key with a new signing subkey and an
> > extended expiration date.
>
> Your attachment contains two certificates?! I guess having included
> 9D2055D575B17DD1CF423BF08D3005AB545A5C73 was a mistake?

ACK, sorry.

> The other certificate (C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54) looks
> fine.
>
> When importing it, a few SHA-1 signatures are dropped (by
> 6BBF9F19873B518D Luis de Bethencourt, 06CA9F5D1DCF2659 Marcel Holtmann
> and 140DE4CC14A029B6 Wolfram Sang), which drops the shortest trust paths
> for Marc and thus there is some further impact on the trust paths of
> Philipp Zabel and me, but nobody falls out of the web of trust.

So we have to poke some people at the next conferences :)

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--almnmszbuvqt2edf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSl+MghEFFAdY3pYJLMOmT6rpmt0gUCaZXcsgAKCRDMOmT6rpmt
0hoHAP0Tp6vttEe8nphJn/nKfhZV3om578Zbwt5p0R50BLgt6gEAyq7pSUNKOdqF
YdXOEHZ+5TUxVCBe/5LU/UeQ/NrzTAw=
=pJe7
-----END PGP SIGNATURE-----

--almnmszbuvqt2edf--
