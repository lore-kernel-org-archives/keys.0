Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC21737F74C
	for <keys@linux.kernel.org>; Fri, 10 Apr 2026 21:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775856349; cv=none; b=ENQzmq9fLvYiMV5qher4Tt4nDJGolhA2dGxqNCzNh65JD5wBGjjILYLiD4hujWCNxnfCzQX4iLnrX01/ZXERffhlu54IxDQOHDmYzz1VU8zKCxu2NrgpGHqupox1oRcf0kHO65Pv2QuBCF0A98lLL+G9/uAbYkvRl6ybo5Vu5sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775856349; c=relaxed/simple;
	bh=VQnL8DZPMkv3qi6wjVPZP9PIQ+bqDWZNfHhuhAXb3dA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hhMD2Be9kKQ1WdelbEhK9rjuDc4ihJBN5y7pIFjCxX9Vo25JFsIQ5nUlaSZkM4rzZ0w8G3/Eq2zFy8Bz/AVdGiRrnz/L+K06tBCtJbORODFExbD9VnKwxJnUngWFDmai0fgbGYE/3qOAYgaWmZ1ySWpOZ+uLkCf45kS8EwaSt3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b=naNID0l6; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b="naNID0l6"
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-488ab2db91aso36610465e9.3
        for <keys@linux.kernel.org>; Fri, 10 Apr 2026 14:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1775856345; x=1776461145; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VQnL8DZPMkv3qi6wjVPZP9PIQ+bqDWZNfHhuhAXb3dA=;
        b=naNID0l6s/1Dbz+NM+8StSDxuKGYnuR9zxXSQ8t4BSsBSjBDOr7lO8TbeVWzQqOyvd
         swdOsr/mIB7YY9Fk990EnTk8DoZsbQUdK1WM9a6s/4Tzyn+MxW3sR19PZhUNekE5SHWj
         NAe1vhksI7zeqO8UN7a8GuUeQsmJv7RiXhLFVAZ72KK0Pw94yWMv7O/OaNmsgQYbH4Ap
         jUZPBPYLa+ZvJ79pSXofaevDRLzwhMQNt+ZFjzVXgH1KZCIqS6fQzhhPgDJfNBe7VjtK
         roSMyZTBzKNyeGo6BxhLmtOuPWXgECsVsM9ecV2TBDMgvYts8f9Bv9bgk05QL3vJqr5B
         HbaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775856345; x=1776461145;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VQnL8DZPMkv3qi6wjVPZP9PIQ+bqDWZNfHhuhAXb3dA=;
        b=WC6nXu+QQlW1gTBbB6hWaPRcW942zWl5/IKjiylf2/VLQJJJtYHf4hLMsZe2MEznuP
         EgQH6j++pHggVQu2o/6XQBeOSLKUMK8STi479wF299CjEVHdubCBy8DnuQDE5YSS5ieF
         x/MHyuenNVnZmDzQY8dVMgPYoE9ZcloSBs0W68aok3eGO17FbZcf44eUcwdCbjG1hs0/
         iTLE+cdqgNkhB+cO9pwZN27WdsJqASjIEuoFXnoFLnqcFlPFCRI1WFgX3QS/rMHHIxjm
         Mj7T21XRH0KlrQqMU7O5poOSfBnSTQBZkvTTvTilckiFDRrZQoTMySwCsrYaclI2t3Is
         6S8w==
X-Gm-Message-State: AOJu0YwF42B4qhjVsSnUODXUM+/5MX8auxlR1y3en4oLcrul37l2FckG
	NBVsF/5pOF1cXQrmJPcCQaTSTpS44WpvahLxQyhLJBZ7kSmSyhxoy3XtskhqXANvD0U=
X-Gm-Gg: AeBDievRuiJ7WWIHFzDubTQLg+UCz/XmNRYhuCPar7sCWh5D0jrbcQl1AC43ddj4kS3
	g5DTqofFopgelMl36wWQhA3edXaHkRzYeXoRZY1TBOJVi9ZxjEiBZivKv23WzUxbt53hTSmPZau
	dlWTSHric7rDT4uoaX24J9NTAz/eVy1a472yHwIFq+Qrw1uX7JwpWu4F12Ml7pZrUQz0q5niQ7a
	ZmJdugkONhCJRE0hrt9x9IJkdZBk6q3OMxSCIZ+xW8mqplJXjcYAdTuuxRPgb3JwZE6ISZ6kFvr
	uBVxJv8EIIcx5Kuvt4EJjQ+Fe4vAAFx+Tgo7s6Ou9H8f/aVvENcHdHtYLAaerRgHsxcIqNAG6Kb
	Ah8sni9EO2zpvALMNxJ4EaRWanlYtcg3jBoZYp7PbuKL05TP74U12Vya4zNnwt5T/4E3jbGpwgh
	57knZOWwcJ7Og2usUEG63mwgretZWz
X-Received: by 2002:a05:600c:8b2f:b0:487:1520:d107 with SMTP id 5b1f17b1804b1-488d688da37mr61605875e9.31.1775856345131;
        Fri, 10 Apr 2026 14:25:45 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-488d681f28esm27644185e9.16.2026.04.10.14.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2026 14:25:44 -0700 (PDT)
Date: Fri, 10 Apr 2026 23:25:42 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dan Williams <djbw@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Add djbw@kernel.org to 1ED2916A667D8802.asc
Message-ID: <adllv4VjgacytU8S@monoceros>
References: <69d705adcdef2_46de100b@djbw-dev.notmuch>
 <adiZwNiyyW6QrSmF@monoceros>
 <69d96225e9f67_6c31a10035@djbw-dev.notmuch>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5ttsgvybzy6rsws6"
Content-Disposition: inline
In-Reply-To: <69d96225e9f67_6c31a10035@djbw-dev.notmuch>


--5ttsgvybzy6rsws6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Add djbw@kernel.org to 1ED2916A667D8802.asc
MIME-Version: 1.0

On Fri, Apr 10, 2026 at 01:48:37PM -0700, Dan Williams wrote:
> Uwe Kleine-K=C3=B6nig wrote:
> > Hallo Dan,
> >=20
> > On Wed, Apr 08, 2026 at 06:49:33PM -0700, Dan Williams wrote:
> > > -----BEGIN PGP PUBLIC KEY BLOCK-----
> > >=20
> > > mQINBE6TN1IBEADBi0Ztes1AmBXGUHh4zp7z8YMykXtF2o+Vd5uscmp0Z+CNoXMu
> > > waEOmxQjwjC6khh7gl/1i0YNMHtwTaNFgXJKVluH5uMXpeo5GXrCHmI14YNhJmRn
> > > 3AHzmM8wh9H0lCy96F71Wv13itJINy9AKYarQJcIUmpMxxO/f5VoE1UYeoouy19+
> > > ...
> > > -----END PGP PUBLIC KEY BLOCK-----
> >=20
> > The two UIDs that are already tracked in the pgpkeys repo are only
> > protected by SHA1, and also the key binding is affected. GnuPG has no
> > issues with that, but other tools (e.g. Sequioa) take this more serious.
> > (See e.g. https://www.schneier.com/tag/sha-1/ for more details. And
> > https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3=
motyyoo3@7vf7ip6gxyvx/
> > for how to fix that.)
> >=20
> > While you can address this yourself, your key has several signatures
> > protected by SHA1, which is somewhat the same issue, but you'd need the
> > cooperation of the guys who signed your key before, to fix that. The
> > easiest way to do that is to ask them to resign your certificate.
> > In return you can offer to resign their certs as there are several
> > SHA1-protected signatures by you on other keys. See
> > https://www.kleine-koenig.org/~uwe/resign-sha1/?certid=3D1ED2916A667D88=
02
> > for the "todo list".
> >=20
> > Don't hesitate to ask if questions arise.
>=20
> Certainly the sq instructions look more approachable than doing this
> with gpg.

Indeed. It seems some people however don't seem to trust sq in the same
way as gpg and prefer not to let it touch their private key material.
=C2=AF\_(=E3=83=84)_/=C2=AF

> Given my old intel.com address is now disabled I assume I
> should just delete that uid and then only need to fixup the gmail one?

Not delete, but revoke. Otherwise yes.

> For using an offline backup gpg directory to redo the signatures looks
> like I can ask sq to use a different PGP_CERT_D directory. If you have a
> ready example for that case that would save some fumbling time.

Not sure I got your question. My guess is that you have your private
master key not in your ~/.gnupg but in a different directory, probably
on a different medium. I *think* you need to set --key-store and not
PGP_CERT_D (which is used to store the public bits of
keys/certificates). An additional complication is that sq uses a
different format to store the private key material than gpg and I seem
to recall that there is some complication when setting GNUPG_HOME for
sq. (Something about sq not being able to contact gpg-agent then.)

I think your best bet is to either stick to GnuPG, or export your
secret key and import it natively using sq.

So the TLDR is: Sorry, I don't have a recipe for that.

Best regards
Uwe

--5ttsgvybzy6rsws6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmnZatQACgkQj4D7WH0S
/k4wLgf+JdNRrlgSvqC8KyMwf2a77YCXCyOuvGyxhWJaXOSr1GXrFzahsZ/fYx8k
vffJ80XigwZc91ALA1OgiIcSL4jzy/WCKJ3fEaxTeA33QWFDviP4Y06Iq2WAHwkx
5jB2Isd2OLeJyAYTN8qCCfcuzAgmWAZjlbbWLLwZMX0WpxUH/6oMG76jGtcIDLrr
pQInD5cq4pKMmu72POC7DVDxvS0NDr+FS44J42oNBKjki95a6AjSu8xzkw8wdqIX
ePkDNFHL7S2+qztnhKkwzhngHicGPP9/sOZEkcRHRQ34MHuymOolW8URaTGEJtZv
7YU+n/lzw9wjdU19Lym0LTP2pS4m4A==
=Fp28
-----END PGP SIGNATURE-----

--5ttsgvybzy6rsws6--
