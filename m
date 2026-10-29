Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793264084;
	b=0rxqSVGUcXKqdGrb4gT7KC322JKAdWFA97tf0yaq70bdABf6JT5/L770HEESs63tt0Dd
	 DjmGfUDbjEMLsOMeNPQDo5VZqahO+5REUD9j8EdfN8jGukohLYgY3WK4jHsGknIWC0pHT
	 /fPVnFww8fGxJKZWABk0XCrYDAH9qF4l86D7uexsYHalZkvplEdAhaPlxnmXRuI+toYmo
	 hhz9qZVjRWvnSw7paz6x8HX8iz05vY/7ocF+SJEefcwrlTJvdvH56m6FzxxvQsxVg+xwt
	 +vZDtc4h01yb7Ihww7TGeX5EDB8+KfIExu68DYCySVMkCTgiQWnaT06GY2CYWwpLApA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793264084;
	h=Received:Delivered-To:Received:DMARC-Filter:Received:DKIM-Signature:
	 X-Google-DKIM-Signature:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 Received:Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To;
	bh=6FpvXTjp7fTTbdfpY8LR9gTAc3hHY+bXZFxEMU+sI28=;
	b=C/tuLfxES4EJQwqlMfsvIx30CsxLliQpSQfCdf45y8Zyy/E6F6qTWYPS44IDO3pzuEyl
	 9Bs4puBWB6m7p6EUFyas/9NOsZ46HjwWskOyLYyWYcDU2jYQgiVFho9qJ2fZnBduhuKrP
	 /+tBgSpiwTfGtvWuBoz/X/+J0vhIjRnkie6HxstXU4b4HXL4C9GViXYUylViqQIEVsbRO
	 sXtiuiPndc3WcmI1l/v6GmYZBJOrlHHTeKuhFcaL766wtbIHA6eqKn46Y+pnoc8Y7e4Si
	 hnmrX6SHtzR/onhTz51EH/+X+bNtuGPWt/M/jj0MQ+L9yAc5Pvi8dqXnnGOe5fwDADw==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b="HEuF//DH";
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98EAA606A323
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 08:54:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=HEuF//DH
Received: by smtp.kernel.org (Postfix)
	id 8C2C91F01825; Thu, 29 Oct 2026 08:54:43 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=209.85.128.48
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793264083;
	b=0mv1bUfbEMlDOJYANQpJdK5X6SDS4rmJPaaV0fwikygvKK95Eeq4FKhPbIrW7tIMiVkz
	 hIWeyLmk94XRK0LBT/LjBfDqDEkEfel0VQc+HZ850J5Vv4Iiinc++dHXVhrykjvYDD3yj
	 4vW8OnTor35vM4qtwdbZgjIEOopVwe/NC1sNlTahx1xJuix5pGE1DXSLWumhFxFfRtIrM
	 X9flER90XVwVaWWVG5Mowz6aVHZis+SGWxam0Tj/OzVtStDqWw0x3JQf/tEHY+LrdfCtd
	 ibcXocHsJBVH2dtKMS/9Js/adGN17nUFmVqyt6Dxb2ZrlATaBPdar9ypRpkHlL3whvA==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793264083;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=6FpvXTjp7fTTbdfpY8LR9gTAc3hHY+bXZFxEMU+sI28=;
	b=H8a1lz315GDMn4TzzWQX1j+lF6zWYU4I+lcsxQvriuxHsiN2Roa8XLO8lnuGUK0DiEZv
	 sfZeuGGysCRvOgXaNtG/jYH/fSmVPG/JeOt03ffp+YamaHhWibGwYb2Hhm6Py2HwWc4QQ
	 OkKmARK2Myp9XxELqUNVZF73dta0WiU9eUr6RUBGPZI7gPQQKM11/jDoRGje0neZezg2o
	 4ubyY+I8ORyjtbBsoRB9deJTLmSFXKQGitNz3JQkosSUePqe+Ptg06JB1WXc+HN5awoyB
	 kwHplpOYF970oFjj/8WCh0S4vXUNtzX8A3ZKzvRDHeCnuCK/RFBHiLZbM8s/5BECrDQ==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b="HEuF//DH";
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	arc=none smtp.remote-ip=209.85.128.48
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 84EAD1F01829
	for <keys@kernel.org>; Thu, 29 Oct 2026 08:54:41 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=HEuF//DH
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org 84EAD1F01829
Authentication-Results: smtp.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4a1b07c3c5fso16740425e9.1
        for <keys@kernel.org>; Thu, 29 Oct 2026 01:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1793264080; x=1793868880; darn=kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6FpvXTjp7fTTbdfpY8LR9gTAc3hHY+bXZFxEMU+sI28=;
        b=HEuF//DH8kVoJpiufJBa74tiyI6mvmm/rA5avN8AHyRbEa19KvhE2jYkyN3WIUgViD
         PJSc5gQG3xAsdv5sjRl/3GhfwcmYmm913DvTE8wn9qYqUy4pZ68r0tu//1RmAigfGvOB
         pdRk5Y6SkjUNqHkTadCRe+hJaDbbcHVXHbqA7OdBheisMwY6RBAZeaECbDNUss8yi70r
         09s2fI5Sblh4L/noTRCa7Ot0hUJ5gk9JpsXwb0EbdEcHSNJc+FKQiaY9immi2yklOSLb
         Ef0KXafiHVEMQqk88FafuvRyhwB/7znSZMdo+9PbUrb5EXi3z25sgwy9IoomLf2wJ7FJ
         Ku7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793264080; x=1793868880;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6FpvXTjp7fTTbdfpY8LR9gTAc3hHY+bXZFxEMU+sI28=;
        b=o8yJyb1ltPPgdgHydFDHVzhz3wLB8ivuxZfck1hMda0hPxoMQcwXGGtfmXz6Px1TrW
         BJdneUFYYdssvtwEM2VEZk6rO4Hu19q2z6y34ajO4WsuvAHo2VUzXBDoQxtuQC007hQl
         N57nadHFAwdcduspOanWkz87XZWNQVtY0kTmAN7x2BtIKudPXUGoOe3x9jJ+KS1WfaxO
         I6SbAJ6HAf0a4b3r8U7F6aMyFbCJJ+vQz+MP5EyFeYr/q4cTSDNh1nlBSWsDY5wEcnNY
         HxHWCvJAIFwwdABbmMoMwzo8Q6vON50EkQZjjkxVw7usfJN+QKuKyRP1mQlbtagldDxh
         59wA==
X-Gm-Message-State: AFq9FYKOT2cL5lIJiQmlQ2ua08IjmtDnk3P3HcNqP0RaRLEx8ifPvT9L
	D8tM+/uWPb8pqcXR2jsGYEGaJOju62qEebFyA7VKJ441+dG3yD095lgV3Vx1cPOUNIE=
X-Gm-Gg: AYBFou25/W2uvmw+UmuK4IW+cOdsL7Hc3IWX1/BF+DGsBeWy53EMfzQJvge4GMb5EQP
	b7QSzsyLWkr2v7m2jM9WDWqbCOqFTWYXS+/xRcE195ar6yh6iaOd76DPrPFnVy1DsBs8tG2YpdI
	hUbSXba/hPKTLa7FwmCHieGoDgfp6g4KzljN3EfE/8NvSxei3/3bwny4/FhBdzp4S2pVIUD7fXp
	SsyBI0wTUkl+vyF8sj48VC0eygn/WRYCZkTaCysXc6+5Rv1/nP9JGK1aUtnLP+u9XIvvK8FAYpn
	EKVqf03lb/vRIiMWorQvTpq1sA+OhpSrGHda4T8aW90b9ikSG5mtMnO3pVhQC0iKsWUq/wl1m7Z
	PHsyKTr32HpCJygHgICoJTFNPx4ac5ndSAQxe993XMWvvNSr2ZR+vK4PFD6IU1IjT2icJQwnA5M
	lW6GEIqAxEXHug1rDfkLJeSwx4Ejyu+LoW3X6iE7nYsZbgVLDLErhjOy4XP7K91GhlZsakXxkIu
	8OYbScGxh8ti5l+kwl+j1uRuw+0c77tM42qMablm/ji7SPZiUujE23OFGR+N0wA5+AuzXTFsoQD
	3UdovmdWKC5v7JzaoeaLgURfx99G/qN2VenNknUcvOKtXOIVMSDeQcNkrsFXbE3m8jTJj4to3od
	kCYO48mAK90FZEI8=
X-Received: by 2002:a05:600c:8b05:b0:4a3:5a55:f454 with SMTP id 5b1f17b1804b1-4a967202925mr103716835e9.19.1793264079859;
        Thu, 29 Oct 2026 01:54:39 -0700 (PDT)
Received: from localhost (p200300f65f19a904f4974dedd775061c.dip0.t-ipconnect.de. [2003:f6:5f19:a904:f497:4ded:d775:61c])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4aa813d2950sm48639465e9.8.2026.10.29.01.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 01:54:39 -0700 (PDT)
Date: Thu, 29 Oct 2026 09:54:37 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Inki Dae <inki.dae@samsung.com>
Cc: keys@kernel.org, Inki Dae <daeinki@gmail.com>, 
	Krzysztof Kozlowski <k.kozlowski.k@gmail.com>, Chanwoo Choi <cwchoi00@gmail.com>
Subject: Re: Updated PGP key 0C4312B8 (daeinki)
Message-ID: <auMHShOWrcZpl2Vt@monoceros>
References: <CGME20261029063727epcas1p442a22eaf19cb80864ca4f973f98ca404@epcas1p4.samsung.com>
 <CGME20261029063727epcas1p442a22eaf19cb80864ca4f973f98ca404@epcas1p4.samsung.com>
 <20261029063726.2680453-1-inki.dae@samsung.com>
 <20261029063726.2680453-1-inki.dae@samsung.com>
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="br7ouz6a3tut5jfv"
Content-Disposition: inline
In-Reply-To: <20261029063726.2680453-1-inki.dae@samsung.com>
 <20261029063726.2680453-1-inki.dae@samsung.com>


--br7ouz6a3tut5jfv
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated PGP key 0C4312B8 (daeinki)
MIME-Version: 1.0

Hello Inki,

On Thu, Oct 29, 2026 at 03:37:26PM +0900, Inki Dae wrote:
> I have extended the expiration of my PGP key
> 3512 8EA0 5ECD 85D3 C6A6 C727 5738 3489 0C43 12B8 (kernel.org account: da=
einki).
> The updated public key is below.
>=20
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQINBFByVSABEAC3YtraHYqLMBl7qG48vfX9K69OTp7aPpoThy1kzkYc89r+dFHY
> oJF/hJqzyVGeKgxaIlkpV2NTPeXvITZwDePfNlt4rrTgUtil22dFa6R6rX8UmUXp
> [...]
> vSaRm79eeDAhGPPkvBxwDf8Xz2x/AhnS9q8Ifwot+Yx+U966dx3ZR4jPhNmB35DW
> T2f3xOgbI20WBkIWFa2QDDERcGqcNfm3OFadwpN4rGXYuBOJIRjMO40S3QrUFsuI
> D3OLjvuZrrMH6BF4oA8MuqyJWeNUpA=3D=3D
> =3DMXVC
> -----END PGP PUBLIC KEY BLOCK-----

That certficate (573834890C4312B8) isn't in the keyring yet, and it's
not well enough connected to be added. The issue is that there are
signatures by Chanwoo Choi (9CCDDF2CDEEBCF53) and Krzysztof Kozlowski
(1B93437D3B41629B), but they are bound using SHA1 and so are not
considered for additions to the keyring. (I added them to Cc: in case
they want to resign your certificate.)

Before you start collecting new signatures, you might want to consider
https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-harm=
ful.html
=2E=20

Best regards
Uwe

--br7ouz6a3tut5jfv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrjCcsACgkQj4D7WH0S
/k4xDwf+IqJKIHYpOU0gGyjhNzhluWjUGycsx/+cX2KDzDqIxKQ3zUaJ+IDDZcNB
E1WAfX3TSppBUZyHmVXJEzY9rgb170lws+VpdKWb1ACHu2PJQbEAaDEbB0Z6VSRz
vCOBbR1bukvVo6VE5zXNBDVHFbA8PEwAltbTKIdFDLaJ7l9k2Lkw7vE1glWBwP/W
rBzXkwgC3J9o2wlMFcCZ1Ov+J6vNf4jA+GG3qcOmX8PalyVzmy+d9bVo7Ptuuu8z
+rATcI7YgoP2aSAF4um0qK76cFl3qKjLjNLCO9w2az4zLqshhdxu6+FCBBtrJQgD
gdNxw7ZYcPUxc5ruj5C4ouLtDT+fMQ==
=u9Wf
-----END PGP SIGNATURE-----

--br7ouz6a3tut5jfv--
