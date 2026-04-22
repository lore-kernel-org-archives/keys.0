Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A491336F429
	for <keys@linux.kernel.org>; Wed, 22 Apr 2026 22:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776895764; cv=none; b=qrgIRw4s6bYzP7IUO+99XIb5es1UVsZQDAhCj1bUoxRGpi8Yxk3kic/prZlaxOa92XFI7/jziByoHghxIavekE3ohf0uHW2kTZT8O++us8/icmyTCz8jh3rRvMqWT/Lhnq6j+/Ii5yP+epR2AklIwFevDZbS0mLEciwZk5nZSkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776895764; c=relaxed/simple;
	bh=+Vxc09D9+r+8SEyo7lN829oO+BdcgIu7ZkIo5+MXKq0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f+Uns1INhlV/gVTQ5FnLEk89XByAzY7XLKYsToeNinkiafwAEXB/A2bSJL49C3XCOBgpOhcH4ccXjldkpbu/QHnDsT6rmqk/12/lmBPnJSF9pHWwmjWtNYA6jZwK1rdtg0YX2gUxgzsE6kUsSb0ycD/7yB0eKMRanhSq5VI1vgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b=HH7WQzZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20251104.gappssmtp.com header.i=@baylibre-com.20251104.gappssmtp.com header.b="HH7WQzZD"
Received: by smtp.kernel.org (Postfix)
	id 5FCAAC2BCB7; Wed, 22 Apr 2026 22:09:24 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 8210EC19425
	for <keys@kernel.org>; Wed, 22 Apr 2026 22:09:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.kernel.org 8210EC19425
Authentication-Results: smtp.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4891cd41959so40852735e9.3
        for <keys@kernel.org>; Wed, 22 Apr 2026 15:09:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1776895760; x=1777500560; darn=kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0TbuZ/rUp2RkFYQdouWgQEjy3cw3gr1X1kKN1xwhZNo=;
        b=HH7WQzZDsotJ9WvodtYO+J9G5DZ9b+4V0UhBgb5oG9yS+olCtz28fAMYxNv851kR5I
         qVWTngiE0keBsf6+1Ek38z7ZzwtcScLkFVIOUAN/B6vuZnceD45KHj1P2NMR2h00og+8
         fHNE+YSPBJURCagBXy6rSqLmtLfZfv6uzW7TyvB0fA3/BSgGjU3go4IlFxQKdadUhImM
         n/YRA0+/ykXtPzwsmsaGoV5g0FVYVv9CFmuSsi0CsRTXZWizHsbJA5SRZRdz0033dep1
         f2H1WDfM4bCmwLyzOC157fKR5/u1uzhO0qFVwpfWiZCkv2qzrGQGL5nx092ofL8G0zKc
         z/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776895760; x=1777500560;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0TbuZ/rUp2RkFYQdouWgQEjy3cw3gr1X1kKN1xwhZNo=;
        b=d9cLiPGjXGeGXaISxTIXRx/4lBGmjxAsZc+fZpKmSRNCzTyr985zV99Vc0DRPvBWj1
         UCiqRtOzzObPEXEtbiic5ivWFPaUan/dJYL3H1dEx7HpK3Tgl7hFuZ2Q19KrTp4edC1v
         hha/P4caZO9K4cHvIlLL5JjCyf+xZT5liGbBwdi7xpXYkZFH5ZAGLoD2DrY/0k1ZlSHI
         zTOuMCiUUrIoMlC7yTBVrL/D5amWO6VbsHa7AYBf0RRYwKUa+OIqUZcJsip2sT7/x62z
         B4LpmI31g9S4IjZF94fJMDVU/pCAXlhy5pEJupmAyyelnngXGE6KXCaRvGvX1W5rBs3t
         N1XQ==
X-Forwarded-Encrypted: i=1; AFNElJ/UW18+7ZrmF1M9WVAYDzXruyr13EfiwfpkcePY3NSIj0ob88bd6MGw9OvB68HBFt/S/7T0@kernel.org
X-Gm-Message-State: AOJu0Yw56ojQaQgALyCeJUbNVFbMPju7D38Yz04AArRcaiF8OdQlTZ+S
	C5gssQf+LnhENsgOLVUG8nXXXQqzNoLLtqF21FfcvAuQZsg3D0ZP5S/YUiGBsMVEKtM=
X-Gm-Gg: AeBDiesA4cv59xU0v6B6FK0zF0VIBGwE4D4AOiMo20T9RMZVJksQh1JGbHTjdq2Udn7
	7IrfAcYGZkIEmY0dseHNoTNh761t+bo9hsxW9cBibK0QpBnMmlpl5V0txTd+tAtSo4IrMJWiWto
	T8kbYQY6R+YLZMX5ALsZ1zC6lgjwy0hy8J4AGLfJpK1nglwflRkpldGkzPxb6p9hi/xM78669rZ
	YymlnDUh8fLHUPyhtqY+wOIFvup6I471YgId3RxM0EvqRLUQlrHQixr7AItm8Of1ck1TGYqjEkt
	iSyqjUZSNg1ELQ99fe38vkvQYDN+UNu4wu2Kz5g8j4gTC+q+qvIprbAgYMnIgBHIllfIY6o4nNT
	DYUEQ7Ox9ZdjsYy1MlGwJuLBE4B0zQle0zPByyUduIyWmHtoGywdG1e4IZTe0mYFTYNZ1g/Yo8t
	cK+T3X06tWPpljKRuvfHWREkJNoJNutztymjIw7Tk=
X-Received: by 2002:a05:600c:1554:b0:488:9bf8:7f17 with SMTP id 5b1f17b1804b1-488fb77810bmr358249155e9.14.1776895759413;
        Wed, 22 Apr 2026 15:09:19 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:1d24:d58d:2b65:c291])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-488fb7a06f3sm173561675e9.22.2026.04.22.15.09.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 15:09:18 -0700 (PDT)
Date: Thu, 23 Apr 2026 00:09:17 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: Lorenzo Stoakes <ljs@kernel.org>, keys@kernel.org
Subject: Re: Replacement GPG key for Lorenzo Stoakes
Message-ID: <aelDjhKMvUu9QK-8@monoceros>
References: <aec18mJotTlfq155@lucifer>
 <20260421-capable-resilient-eel-37bec7@meerkat>
 <aeiMOm5bxDVPD70y@monoceros>
 <20260422-glaring-gainful-puffin-402e41@meerkat>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pj2py4cj3roolq3g"
Content-Disposition: inline
In-Reply-To: <20260422-glaring-gainful-puffin-402e41@meerkat>


--pj2py4cj3roolq3g
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Replacement GPG key for Lorenzo Stoakes
MIME-Version: 1.0

Hello Konstantin,

On Wed, Apr 22, 2026 at 09:39:13AM -0400, Konstantin Ryabitsev wrote:
> On Wed, Apr 22, 2026 at 11:19:36AM +0200, Uwe Kleine-K=F6nig wrote:
> > > > So to establish the required trust, I had the new key signed by peo=
ple with
> > > > the requisite level of trust. I attach the key here.
> > > >=20
> > > > Could you please remove the old and replace it with the new?
> > >=20
> > > Done now. Thanks!
> >=20
> > I see you removed the old key from Lorenzo. I wonder if it would make
> > sense to add the revoked key instead of deleting it to spread the
> > information that it shouldn't be used any more.
>=20
> If the key is lost, then this serves very little practical purpose, beyond
> advertising that the old encryption subkey should not be used. Since we a=
lmost
> never use encryption anyway (just attestation), then this is just effort =
for
> very little gain.

The effort however is also very low, it's just:

gpg --import revoked.asc
{
  gpg --list-options show-notations,no-show-uid-validity --with-subkey-fing=
erprints --list-key C52D7AFE85F25509;
  gpg -a --export --allow-weak-digest-algos --allow-weak-key-signatures --e=
xport-options export-attributes,export-clean C52D7AFE85F25509;
} > keys/C52D7AFE85F25509.asc
git commit -m 'Add revoked key C52D7AFE85F25509 (Lorenzo Stoakes)' keys/C52=
D7AFE85F25509.asc

Distributing the revokation also has the advantage that if someone
wonders why they see an attestation from Lorenzo using a new key, the
revokation gives a good additional indication that the new key is
legitimate.

Best regards
Uwe

--pj2py4cj3roolq3g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmnpRwoACgkQj4D7WH0S
/k7aeQf+IWEoFZp4UqwQxpG2kL11IANLw88Y4TYfyioQpE4GLK+HYblZecB5/9zT
7QR3r0we+TfrENst0BLBEMUIoPcY3EXFMkD3tM1/olFAhaKB+r++gb+TndBEzyyu
pcpppfmCAXfTlh5R8/cLyEcTvDBKDm1S4lVHtyUDq1/a/1Yo+T3Ufr/KgOcby3dH
QErH0BrU3KaS7KfzmN02Jf6jl9foE+9U51dHQtLChFiDVGvN/A4s/4MN0QN3VGiZ
BZ3AE9lvMIwkBkKA0XWq0NFxWxsiXqpV8IdlrZvjC628bwORYGbnGWoTQ+wu3uHZ
INNIBrkh9QK0DCM+nZ+dP9gh32b1Dw==
=Sj5j
-----END PGP SIGNATURE-----

--pj2py4cj3roolq3g--
