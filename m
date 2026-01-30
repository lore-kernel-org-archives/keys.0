Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF4236654A
	for <keys@linux.kernel.org>; Fri, 30 Jan 2026 23:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769814849; cv=none; b=CYeJ/o9ATZEhvGn6IStW7YAAGylfcfRKVcK9KkvhUtI7QHoOhgeUUgbPit996eRlhbG/FGIeDcq1+NoAZhFM8TlHt5aqYVn9Q1OzRRLfeISfqYbBrgmrm2ABAf88PWcP5pOx1kDy0ddjW3muUONhMN3jq+jnlY9GH77zwDdwLyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769814849; c=relaxed/simple;
	bh=mfs+dzEJGLvHhiTEwR9SeKmEVMkW3T8R5d+NZ37Pw08=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aLxHPb1Ay2kA/tGFHBBv9c1QAcjcsvkhcSDSc4TxICPN0oZ0p20vMBD1+oz/IxncRHXs5MDxXjjXLRCG51sBuXAuqabuxwj3BepuB5UxA9WogJZujiMNvLb4uT4wLe3HPuV6Q+yjwhGjhCCa5GdZA7L0WT3trHDEAKiMGjcB+uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iuQBzk4m; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iuQBzk4m"
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4806f3fc50bso26398715e9.0
        for <keys@linux.kernel.org>; Fri, 30 Jan 2026 15:14:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769814845; x=1770419645; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p69W3H6AFlp7BJqoAlkX+22Nw5UxM2+qsqv0i6TWLlo=;
        b=iuQBzk4mhb/Ywi1adLfsGkiOIlEuzA3y9C29c/dSV+mZJU8m9aDGm0i9G/X5twbsxe
         yUbRnvz4nZXpmcCedSwRSI8FL5URkEq9QuzmBVYBUGwma01QwHUybqPLhyAWK2Rq3zeX
         pRsrrs9hWDOmPkZR73CTkH0PtblSeKbCLFe0+fTaK2AtigoYdu5tsHECdY8nYsSXP32G
         CuLB1isbywMocfIDQmaUqP2Gf+OuqaiVUd3P0GvmvBpE1gEOss9z7DH1GJBm6yTyyTSN
         u0KP1KbIngDXB8TObf0Bp1P1qP6GiSe63MqgHZrRm/A4cnTYky5iDM912glgGNj34lcB
         DbEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769814845; x=1770419645;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p69W3H6AFlp7BJqoAlkX+22Nw5UxM2+qsqv0i6TWLlo=;
        b=FQyLylRqVQocVpFLFExdh92VNlrD2mQFL1GKa5cfn2ZPboR9Q7tUjPE6sOnkQdTQ50
         x3QDCNolWyjLXP1sANOBLfAJN43I9ydha1jdS/awN57YKzoJVVZMnXebnPLAlORKijvu
         Aq/qgTQtPRAwQTPXy10+dtti7v1CtJtzhRFPbFiToT4WRadOBMVsJCbfG0bXA/KDuPHS
         PH8pKdgf2BPMD5mmmvGy5deqBwo7TdaNspt57wtM2+cg36W3lYk2JCIWP1UdwLr2cSFr
         T+ZPYOyyGcLCOMYbjT1NPLGTEQaQhQj9NKdv4i0Ux80MJBjIJo88YXcf6hNAHWPTVuPT
         kaEQ==
X-Gm-Message-State: AOJu0Yz1zof/1vCDEjUrqG77bHTyL8L/faX+N/0Lo1IYCrjFuHPMUnIe
	IlmAv1JSXQAni/4Es6cMrmq9KyCqC8Gj95ok7GpFX8egj0Z1bMJz28zUjYLFssIs9BE=
X-Gm-Gg: AZuq6aKDVTEtaZoWylIQ7EoarTMfVSwjo2pwvSLfVVVmPVM4rfAbcruhBT07RfWAQO0
	Kfq+B9h0yroJqzL/0s0kGXFcgLkTfkL6RKcMTfjsMhc6Ct7tfxFp7ky4L1NHJvClRzTYgceaie5
	IpizYzUI0eGKm+l8DLn8GDYP5VlbhdxINflz8acUfP6VSjEvQPQhV9DM4CBzKjmIuaXtyDNtxsc
	GbRJLRdyA8BL7CvbGXtHmZBKgXPQoLcplp9JDd0W+WwoJdQneDqXbdho+i9TA4PjqQR00+cT25O
	+Yt2F/1ZwbUvs4COZAiY4dEjukwroxEZu49Y1IFgNfbzzpPxoefTokWhV7frY4hllxEydLMthd7
	kLf/mEZ1FL2OH0cVR6R13YR3VOwZP1Nr06+o2o3FCM/iiJtizGOFWSAxapjvLG8pHwLmgFAhCdS
	E1EPvGPVS6q3yvoq8OJAVjwR3SYtXe
X-Received: by 2002:a05:600c:530f:b0:47e:e20e:bbb2 with SMTP id 5b1f17b1804b1-482db45dc5emr63604725e9.7.1769814845413;
        Fri, 30 Jan 2026 15:14:05 -0800 (PST)
Received: from localhost (212-166-21-66.win.be. [212.166.21.66])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-482dbc75e13sm38472455e9.1.2026.01.30.15.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 15:14:04 -0800 (PST)
Date: Sat, 31 Jan 2026 00:14:03 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Michal =?utf-8?Q?Koutn=C3=BD?= <mkoutny@suse.com>
Cc: keys@linux.kernel.org
Subject: Re: [PATCH] Drop expired subkey from description of =?utf-8?Q?CFD?=
 =?utf-8?Q?ED9A2FD1314F0_=28Michal_Koutn=C3=BD=29?=
Message-ID: <6vhuotebu2oaotdnzt2xnybdks6ssyh77zmbi7hnmb3v2yf65k@gezaaxe5svoc>
References: <20260129094802.947558-2-u.kleine-koenig@baylibre.com>
 <7y444mpcfx6deml6p24h3euzdh4lodpcbmcg4asmf572dxubgs@q5v2qvltejdo>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2veaigzkztx7qnj4"
Content-Disposition: inline
In-Reply-To: <7y444mpcfx6deml6p24h3euzdh4lodpcbmcg4asmf572dxubgs@q5v2qvltejdo>


--2veaigzkztx7qnj4
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] Drop expired subkey from description of =?utf-8?Q?CFD?=
 =?utf-8?Q?ED9A2FD1314F0_=28Michal_Koutn=C3=BD=29?=
MIME-Version: 1.0

Hello Michal,

On Fri, Jan 30, 2026 at 03:35:30PM +0100, Michal Koutn=FD wrote:
> I use one-year expiring S subkeys, however, I don't want to refresh it
> in this repo every time :-)

If you upload your key to keys.openpgp.org or keyserver.ubuntu.com it
should get updated automatically by Konstantin's periodic syncs.

> (Attaching current export of key.)
>=20
> The entry (even w/out S subkey) could still be usable since it's the
> main key that is trusted by clients and signs subkeys too.

But if your correspondents don't have your subkey, they cannot verify
your signatures, so updating the key in the keyring makes sense.

Without importing your attached cert, your mail is displayed for me
starting with:

	[-- Begin signature information --]
	Problem signature from: KeyID 42136E059FF01C4639CB8AF47E3D02E794DBF808
		       created: Fri 30 Jan 2026 03:35:26 PM CET
	[-- End signature information --]

after importing it into my keyring it says:

	[-- Begin signature information --]
	Good signature from: Michal Koutn=FD <mkoutny@suse.com>
		    created: Fri 30 Jan 2026 03:35:26 PM CET
	WARNING: We have NO indication whether the key belongs to the person named=
 as shown above
	Fingerprint: 9F2A B6F1 F2BB EE76 21C1  B620 CFDE D9A2 FD13 14F0
	*** Begin Notation (signature by: 42136E059FF01C4639CB8AF47E3D02E794DBF808=
) ***
	manu=3D2,2.5+1.11,2,2
	*** End Notation ***
	[-- End signature information --]

I don't know what this notation thing is, but this looks a lot nicer.

> > diff --git a/keys/CFDED9A2FD1314F0.asc b/keys/CFDED9A2FD1314F0.asc
> > index 1d3fbebb9f59..3c35d423ac10 100644
> > --- a/keys/CFDED9A2FD1314F0.asc
> > +++ b/keys/CFDED9A2FD1314F0.asc
> > @@ -3,8 +3,6 @@ pub   rsa4096 2017-08-23 [SC]
> >  uid                      Michal Koutn? <mkoutny@suse.com>
> >  sub   ed25519 2023-01-13 [A]
> >        47DE106A4B860621B0D6E63DD8CF730A95E2521C
> > -sub   ed25519 2024-06-18 [S] [expires: 2025-06-18]
> > -      DDEA67C5D8F6C4667A5DA0092DDD69DECBBEC149
> > =20
> >  -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> This patch only drops the key metadata but doesn't refresh the armored
> key content (making it slightly inconsistent).

Well no, it's not inconsistent, it's how gpg prints your key since the
subkey expired. (Ok, you could call gpg inconsistent and you'd have a
point. :-D)

> But if that's OK with you, I'd prefer this patch -- the main key remains
> in the keyring and I (or anyone else) wouldn't need to refresh it here
> every year. Thanks.

As described above that is hardly sensible.

Best regards
Uwe

--2veaigzkztx7qnj4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAml9OzkACgkQj4D7WH0S
/k6wpQgAqKmfuR1vcG2JgTI6XeUYwPXIiplQDDi900dUXEJ0856blqPEdidKjC3N
2QofOkykU9I3Y+slmeNGcb77QYzmAbEfMvrZ4eY8O/vdQJULMi32XCGfbUPw4TUM
Uv3ESor7C8mwM+Kd3IG5LXtWuxPQeWfzQW5AiyxvhHSZmO1e9TqHb9LqUCuEOdWp
rPVBHXAliLpxLw7DjoE5kOLbBrbvRtEEAmlgJUW90R/vruf9hLAQ5sqXvtte5IU6
P+DzxhYp3cfaC/o+cexTGD6Ogzee+8gQkq6jeLaCSkQ0Pq+bFPAqJ48VxctyPVbu
FaomurIhfpGbaVE1sssuUrCNAUsxCA==
=Cv6U
-----END PGP SIGNATURE-----

--2veaigzkztx7qnj4--
