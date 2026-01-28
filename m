Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5C9274FFD
	for <keys@linux.kernel.org>; Wed, 28 Jan 2026 13:23:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769606595; cv=none; b=RQfBj2cB+jx72N6EWneMxx6bXpP9yzFNHfeENbxPFhl8PKPK2hz8H+V2xDqbJMk267oNaBUnmZKvS5mVs/2Dk7h6+26sXg/9QayJGlgKD1ZcBK0LG7dYjsuGWNRXGnCiPIrrtsC24X1qS7qo7r2JYF0YynI0+zNi1PQxMx5ddFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769606595; c=relaxed/simple;
	bh=ekpAlLF2A2w0MaZz8V+5bTO/IVUXv+jSbBt1cD0d7yU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CPZzu27tSyVuB6c07kRUIIqfh+tjNWhY+7hwwTWu/xAcqW3fclnh649lQHOrS+s0MZzMXyIOl8uTD/O+q0WvZsmaxs1tw0zdoZass/3HBIuKerav/OV0/2EpWS5KmuMojeH9i02usDYevItfO5E7DUf66msmpcq66N88k2QPz0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UKXrL95M; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UKXrL95M"
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so99419805e9.0
        for <keys@linux.kernel.org>; Wed, 28 Jan 2026 05:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769606591; x=1770211391; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t95oRZrJl5EKPOoXpbS7Z716/+Pi0TizLTZbuTJhQpY=;
        b=UKXrL95MpX2tracZnCFHrTPndB8FNtNzcI77mJIlrTFHPu7J0nduT3+BxEA2WK7hhh
         umskIUgyP8Mm0IF85Ef6a4MVZJvt296lQaJeJACrpCfgl5HiTaStY07lP09OTjU6Ty/K
         89/jTtSWJC1AKgTRPyvdIv0weX36vzG+eBP8Z/PJB7an9RlvpDh+IDIuOS9n5jjn8iVy
         MApAMJZ/GzgkPHGQTgEOyH17+ocVthF3vcDTCgbDT5qs1ioRafI37fIz4NC4Yza+dd+P
         TQ6lwDkjrzuHMsZYXHWW4eXdwnSwxP9mVUZ6wqTYjgEy28Zp2W4oYj+/4dSRr/8qfjCh
         PMlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769606591; x=1770211391;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t95oRZrJl5EKPOoXpbS7Z716/+Pi0TizLTZbuTJhQpY=;
        b=aK0ludAuVnVl0LD2g8SbvL00uXymNbqE8r//RJOyumceVCUPIqs1rLFD6a/89F6wFh
         Rq4WO3XY+75aXF80QS+JzWTeVnBvhdpbA4KN98alWQawrHNe+v0mfK/B6xiPwGoXTMOo
         UpH5GgtsYkhHq01XOe45mS81/oCptYT3KZEtwY3EtY/tdTgRYNHfTEsQDMXKWBzxwJFf
         y+kWJoE5cpCfxt56KYNgMcLBFNoM2gDdN4Q+UwrhfW+Yk9kZe4Yg1fMQ06SyWx+GovgG
         AmJgs08tX9Mg4VKNy+GzejkZYOG12+B5M/uSYrikRAnEUR5jIV+LK6brD9Phs6C6/JjS
         gieA==
X-Gm-Message-State: AOJu0YxPCE41nVboAaeBn7sbWY0IH6/oaIqG1EBOk3JbZ8i1oeKhXE4a
	4CKpA0EFhsJWJ0uMDaRG5NojGsJgYMzrvZ4KxGu3wuhVQ9GGm5ZdWNJJ6iH2B79deHmTY+g1fCG
	2CGUn
X-Gm-Gg: AZuq6aLpgUPljmwD5X1WzBpHe/ZbjW/pUbgUjPu50gLfFjpH/BaZXbHAUbUWhffDcTO
	qAlbRWSUpbS478YRZ03jOlgIasIO9gXI0ZaAsTKPiZ6XXswzoqxBp0N5rd8tFfQKVuQDXlioMCj
	4oQNHgy85Ad7wBA8uQbZdpv8jCfJO+Ku99zNrArQDmGAvYYfXKx10LDl8uLIoukhYYUd1uWfDbh
	r7C6ykcwLzXZxzEtXjnp9tV6QrFHGG8G7t5JBzSKvOf+pUdj7fvnCmMWB+Zx4715G+86bWWdVNw
	A+Agq2hTy95T+UqtTtppGuwwngEM5cRphTS5m0iFiu6xalsgyh89kST+4Eu6RCrQ7D22kSHUqZi
	YAbA0bQkFMvuerM9PkTuQcUNEkTy7BVeRc9gVFHy433JkLGSHv2ETSzKcwdlvbDPBU/sIWuCz2H
	iPhCpN7LZaTmTrTZ2p
X-Received: by 2002:a05:600c:4e54:b0:46e:6d5f:f68 with SMTP id 5b1f17b1804b1-4806c7cfb14mr46863165e9.12.1769606590576;
        Wed, 28 Jan 2026 05:23:10 -0800 (PST)
Received: from localhost ([2a02:8071:b783:6940:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-48066be7404sm139670265e9.1.2026.01.28.05.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 05:23:09 -0800 (PST)
Date: Wed, 28 Jan 2026 14:23:07 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: keys@linux.kernel.org
Subject: Re: Update of James Bottemley's key in the kernel PGP keyring
Message-ID: <wurdvn6g5jno57ab4ek2yqkvum5hpw6apbmgz3gdegrz6ktyr6@pphqxlrxbtg6>
References: <6gt2aiuqqgevlh5p4ggzahfhruciee4o57npoeadhqff7pqsp2@zsxiyjfetg4p>
 <702051e34bb06831594e4a438182335691563ef1.camel@HansenPartnership.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vomg2gej4aq26sv5"
Content-Disposition: inline
In-Reply-To: <702051e34bb06831594e4a438182335691563ef1.camel@HansenPartnership.com>


--vomg2gej4aq26sv5
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Update of James Bottemley's key in the kernel PGP keyring
MIME-Version: 1.0

Hello James,

On Wed, Jan 28, 2026 at 07:37:09AM -0500, James Bottomley wrote:
> On Wed, 2026-01-28 at 11:56 +0100, Uwe Kleine-K=F6nig wrote:
> > recently (2026-01-16) the subkeys (as tracked in the kernel pgpkeys
> > repo) of James Bottomley's key expired. He updated the expiry date,
> > however adding the updated key to the keyring brings some trouble to
> > the WoT as an update drops SHA1 protected signatures which (among
> > others) loses the direct signature from Linus to James.
>=20
> I don't think we care about historical signatures or the web of trust
> any more.  The signatures are mostly from the original key signing in
> 2011 so they'll all be sha1.  All we actually care about is people
> already in the keyring signing the keys of people who aren't but want
> to be.  That's a current not historical function.

Note however that for the model that is actually implemented it's Linus'
signatures that matter. So currently the criteria to get your key added
to the keyring is that there is at least one signature path from Linus
to you within the current keyring of length at most 5 (with counting
both Linus and you). See e.g.
https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/plain/graphs/E4B71D5=
EEC39C284.svg
=2E A key that is only signed by Karel Zak doesn't qualify to be added.

Best regards
Uwe

--vomg2gej4aq26sv5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAml6DbEACgkQj4D7WH0S
/k7XvQgAmS257Ri38sKuLsuU5ww/4uxnRePotAJBnV15LlHRwtbAC/nGSR8F3Nt9
sVsDKlRYfM1JBQBQvQkHCwqaBBaCpiwujLftT4hKhcczqOU2u2u2qHSVgZAXITuF
6voS9f9kusbkDD9cTjuWHVeWMCv8qsBUWO+AsbQNVHmbsyujLsLO0cxvUi/tA9Xv
n0f/+wVGlnIZMLK8UbqJ6jy0ZIwp+e6iP7T9ul1Uf67dL9T6RUwK3lRejAo+KjbW
natuVlF/Bnmi8YlEehopWkHSNFMpUgNrpyEvQDkUJ4ysl+CavoJ8mtNdw5R3Kn1R
goM4/+x5uCU9QzxJshLCmXVZwmLKug==
=jCIM
-----END PGP SIGNATURE-----

--vomg2gej4aq26sv5--
