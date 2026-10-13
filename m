Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B06C34EB878
	for <keys@linux.kernel.org>; Tue, 13 Oct 2026 11:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791890350; cv=none; b=ap8U/mzM2WDHaMGunuC3BJf6z0XPcyrZDXXnv2T3YFEMA/236E4MTYopS2HJnK/cFF+6nU0mwZAIKkbUjvC3Xfz/1L1O9EJKHyk+YHXDdkWt7P5r9+PSOw4GuwHMOisYIRzPpXLf1sYf13h8cN7KkffSyAvFai5iYy89HgntL9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791890350; c=relaxed/simple;
	bh=J+s8/HZErSRVNFssmpy+j3HkOXi1Dob2YPaNXMJwkOk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D2LHuUjBUGvUvm0HCNnTqu/FJr3yktJN9OCPm5z457OLNuqelECIHDqsx14wMN0lwXU6cRwK5Rn3T0ULWqieLpGqcjXZUL577zTNeWpxErY6gNgfQuEq+zcVk9xjnrbxKGIZtz+2ULFniP7U4GprxOULiqIsdccJpjlau5yZ1Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=YdYAXbLe; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="YdYAXbLe"
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-48b0ef9c76eso2277273f8f.0
        for <keys@linux.kernel.org>; Tue, 13 Oct 2026 04:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1791890346; x=1792495146; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=2a07bnMZ72ihqeU/vTD5zzgqxGvMQLkTAxT9BUcxn7M=;
        b=YdYAXbLes78WNcvWbJT/igxD/Oh4DbnhLqWexjI0Zt3G5alx/QrSbVK3zYCPzxuK8f
         37JU8OQROIF8/nbMaiqb5+rS6JMlU93fdnHKACnQB9CJuAdZMms3nt8Ft7Gnf3Y9+6/2
         mUuMRqd8Zb7KDPTyA1MZ1f0pF4LIBk/oWFmAQ3Wp/A2KZKp9pqu0IF6Xw3c7sbOxFPL8
         rgIlgNK4aW2bD7QCkn2mKE22p0CM1u5mWrEx10xMdGj0w9sLipbi95dKL3IqUJ0655Ng
         lChFYaZFLDu4jU8aTAauNLFDInGL2NOuO1EBjKkmYsDqbeEp2Yw1VkLM2vGTMYhY5G6B
         BHWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791890346; x=1792495146;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=2a07bnMZ72ihqeU/vTD5zzgqxGvMQLkTAxT9BUcxn7M=;
        b=riML9v7bcWiyuDRjrUULDI2eelhbwCKX7YrjfM9ZAMxqelEa9WNDqAUrRQnLFsYwBV
         UzslYKljasfeXEj2UJips77S+nYABB8BbR1RguXiT3bMTRQ9cIwdf5KguQ43yEbNqdR/
         0DtQKmKUgY9wdyL5NbvGI62q0KoVL7wdNVNebh5ud1R1mVkmBZNOWVq7ncz3xCxUfHj1
         tqgLn6OLZj3LKpEx4fiS5h1lkDZXNpVjq/LbybT7ZBdP5XHbPhS2i8OR6jQXr1dU9QeW
         JvNE0fJL1xRvPgR42UrD+qqqrGSX+GnOGeEFpQdpMAuHXcGuwVN5BdjbgJVeqmtOGNSH
         Wgpw==
X-Gm-Message-State: AFq9FYLh2GZjIB1HQIBBiStIg2djeeHA5lEAZL81TmEpsg/jOsrHYYbT
	RKVOgAols6z946NzL00siVFqRNnNRM/pN8Ciitz+jKZ4g2dx06sXOFoODLpy+8Bv45jJc3Yfe7V
	RxSzd
X-Gm-Gg: AYBFou0iVRHCJOTfJUNY8aPRjfYLO8krxFVogiZJFUuhznUwIvj4KSEXj+eOoM4Hvk/
	I/Si3rgbDfmKBxEF+6QvDmGTdhKowJ6IKq6RtmPwm6IVPfTn7rTHifYZeoKaymc3tKPS669b1xy
	aOec4h3Q9g5jjgN33WeECvLzz3s7dXqY1nCItbvzNQBMI9Teur7DSOM7f2VSKYMl4uHkBW3oHpZ
	eDOlY65YburOkPzkx73zzBD+Zjl+TpmI+EQnNGoc7s8TPn1CzYsojU/3PPpgxnQD4Kz6ryPR1Wc
	g25pi13gpPeu509HdRZCJe4SZUjgqsPh6ST+wZuj20049dxSmFvvmfVuyKs4v7KVZt6ZwP2aXxK
	pu13+MsMPuaxP6aenrBl+LNy8p5fPfEGHPYL5vziMGKm3fKPt49bYuC3tbkgLg6QprsK1muzqop
	Yh32u0PA6RZ+pIMoSxaPOs9MnFvLDmN8PKodId/4hVoWr4Iitw++Y7kefSccDz4TCSdTstTH2ZA
	k+4PAXZbYOMq0vOwaQq6SStSlVLOiAA37TVRruE75XX1prlo0E3ZGE84YwknVLSUPYq471/
X-Received: by 2002:a05:600c:821a:b0:4a1:74a1:7ecc with SMTP id 5b1f17b1804b1-4a18e446ef5mr200054055e9.1.1791890345685;
        Tue, 13 Oct 2026 04:19:05 -0700 (PDT)
Received: from localhost (p200300f65f19a90446e0c6f8ab4da1d3.dip0.t-ipconnect.de. [2003:f6:5f19:a904:46e0:c6f8:ab4d:a1d3])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4a18bf2343asm653186305e9.9.2026.10.13.04.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 04:19:04 -0700 (PDT)
Date: Tue, 13 Oct 2026 13:19:02 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Mark Brown <broonie@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for me
Message-ID: <as4Rmi2qBg0ekLTV@monoceros>
References: <31c98cd5-bea4-428c-950f-d38a43709245@sirena.org.uk>
 <as3BnOFlaS4SCrVY@monoceros>
 <48b890a9-1f26-486e-9a32-3d20829f7db5@sirena.org.uk>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="naafto4i6gds7pj2"
Content-Disposition: inline
In-Reply-To: <48b890a9-1f26-486e-9a32-3d20829f7db5@sirena.org.uk>


--naafto4i6gds7pj2
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated key for me
MIME-Version: 1.0

Hello Mark,

On Tue, Oct 13, 2026 at 11:51:12AM +0100, Mark Brown wrote:
> On Tue, Oct 13, 2026 at 07:36:58AM +0200, Uwe Kleine-K=F6nig wrote:
> > On Thu, Oct 01, 2026 at 04:05:29PM +0100, Mark Brown wrote:
> > > Attached as per https://korg.docs.kernel.org/pgpkeys.html.
> >=20
> > The attachment contains two certificates. A dsa1024 one from 1998 and an
> > rsa4096 from 2011. I guess only the second was intended? But that also
> > has (pre-existing) SHA1 issues, according to `sq cert lint`:
> >
> > Certificate C3F436CA30F5D8EB, key DD6A5FE57B78DB59 uses a SHA-1-protect=
ed binding signature.
> >
> > Would be great if you fixed that. If you don't know how, I'm glad to
> > help.
>=20
> That message does not even tell me enough to identify a problem.

It means that the proof that the encryption subkey DD6A5FE57B78DB59
belongs to your primary key is based on SHA1 instead of something that
is still considered safe for some time.

The easy fix is

	sq cert lint --fix --output - --cert DD6A5FE57B78DB59 | gpg --import

(if sq can access your primary key) or (I guess) Konstantin's
rebind-modern-hash.py script (can be found in
git@gitolite.kernel.org:/pub/scm/docs/kernel/pgpkeys.git).
Or if you want to go through the deep details with GnuPG, see
https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3moty=
yoo3@7vf7ip6gxyvx/
=2E

Best regards
Uwe



--naafto4i6gds7pj2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrOE6QACgkQj4D7WH0S
/k4jOwf/VJOFyeFSByVBn/55u/aBFgsTywvY/R/Gisb3Y2bMuPmZJKZTRikcu7wy
Jp0MZMF0scVvxNdT1OCwbWLujMgM73Q0vV4shiZ+R2b4aWHNZzYLPP9VKPGF589s
p1M0Mj3deIRE8eOQ7w/9nWP2TsBEdcm5AXqX5bi9gHWoaZNmb0lFYDGOXRBVXMeL
S1Lnz6I0AIn19brgy4L9jnQ7qRagCii9rhzsFAxDi9tVzV7/5E1Ps9oeqQY0LT8i
kKvPA6c3Kmh1cqxMXLbJSHeFKv5afxP6f2tAl4aP06md9ruSdUeddWK80RebJ/j+
4jjPJI6Rg0Dj6U0FlxdDOe+EYU4GQw==
=1dS0
-----END PGP SIGNATURE-----

--naafto4i6gds7pj2--
