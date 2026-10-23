Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.52
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792746266;
	b=OZLpfouobll0V2MvNO65vN5nhVjT28C/Lv4lwl9aoy2pcu2LXTHaLrkXI/vyluRilLfg
	 ZkkMHDOovbRev/Mf3I8aQFVOKnZ/meh5LJ6Jp6TfWhD0Wkdr17iNe1yV3x3hoiv6MdRM3
	 n384UbHBpgj0CcSE2jIuFwJnXaVhWtZ13QiyFnsVVsd6pCHg6XgILbu5bEPTrBJJUk49x
	 9TZfh+5yue+0d17rZF3Nf3w5tNP5W+vCNyTuJso4g/xuI2OsUdjkI/IAsrv01hk21kvtn
	 pOZp5tDMv6T6fSj1FLshKsaXIrDoYoXqZrX+Ad+NHh7ZiXqN5G1pBX+RiEH2KV0hDVQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792746266;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=3uHpiVbIPrULKXjKTMZhXejWkZkksO0o9dtsAJy/1C4=;
	b=GMu4QLzL9ClfQFj3d6k4Q1iYXfHRZD9FfDOyPPt3bk5hGtgJESvazqpzlXOhQfqMGBBr
	 k4srKaJTfEe2fRYlKN14bPLdWt9UM3VqjN96zlkxhi8yFw1ZMpz81H3mdEWn8NMLKRd9D
	 9ZMlDEjtTB0KYEZ8nZig+XNss2riMqFYJ8hc3SZjpVr4pyzu6+JDRSmoNGkPJ1lWbbmQ1
	 dxgWVR5lmCYa54+ABelEZLeIpjAHucuglfsUPyzAiAn/oTewgflw4Gm3lT5FzJxTOYajs
	 fzLJOwHpWB5aH41bRNv8j/MmVwSRnhz+gmZNMNEnzX3NF8teaRRtXU09MyZ/nHdldOw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=D4meT7j0;
	arc=none smtp.remote-ip=209.85.221.52
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5847E606A320
	for <keys@linux.kernel.org>; Fri, 23 Oct 2026 09:04:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 5847E606A320
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=D4meT7j0
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-48e20edd106so512101f8f.1
        for <keys@linux.kernel.org>; Fri, 23 Oct 2026 02:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1792746264; x=1793351064; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=3uHpiVbIPrULKXjKTMZhXejWkZkksO0o9dtsAJy/1C4=;
        b=D4meT7j0WcpHc8tz6uJLtrSDD7eI+4jVilYMwscvVP5FY5J3IV2tWlnJ7DI2fiqL5N
         4TSW2jyDu/8h7VPbyftZdYoLECypKCMnEVLIVeQrCyrweY90iZYbYgcy8R1H2Wjhk85i
         td11xFWYw4HjyN08J5B/z9CcYFzJEbJmdxq7OIVy7mSGagu/pBeKvCp/4zTP5/mgfIag
         CVr6ru/GKcv5Zu5W29EZ5pvRFRLmQbkidysgW/ulG6kcad6pkraPShwcnmVzsQcTV+SS
         PqosimbDRDE/tfblTc3qpTeiOkb6xdZEqvCbMXrdAqOR7ZAD24dZYJObaw7cDbx6foMh
         AZlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792746264; x=1793351064;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3uHpiVbIPrULKXjKTMZhXejWkZkksO0o9dtsAJy/1C4=;
        b=stnXi+HvmiloBfuwYzV8qcdW7B02SAdeLxIOqEFfb9Bfw7o95qIo3yskhm0dH2g99M
         do5Cdz1oke3PDuQVXUwJbhJ40bQ0bLOMX+Ddr6z0BRwqe8YM/ENWf098D0ic0MftjEZ/
         MhBc8fJmr/+mpX0+q6ZSAglm1h1Ek1fIxC9u43QA95/Z3Wn46D1TpxcQpxJQLu0UHozw
         xbuwstZ5MkKoCbnim7QNx5L2me6B4vGJ8yp/poZNpuAr6N1EUABXThn7l8rXjrHEHhcI
         itKH/JBFA9H04cWTSsem02v1B/E594GVFedG7r1UEnikHZQMduXWg5yTB0n3CsPgmAKY
         fz0w==
X-Gm-Message-State: AFq9FYLH0Ux/3uUSUixdL9jdasHd+kmGlawvNOEzDMklMknwHG7uI6ZJ
	Amfjr/cgKY8PxqMCUEEk3/MGXn8GrpYsS8ai7phxb2pVP1TkUmR5iOND8G2TW/UujPU=
X-Gm-Gg: AYBFou0CAKX/7ytjCOQktm3mxB8W2mtNoIxrOovb6t2IEJ8sUaDgsRqOIays3Ayx16o
	+jV19lQfoAYkyqLnPVnsRWLoz7wKduwjaSmPdEqmPGT14T+TTsUpGczkcsKKhL4wt6apI/vtDLS
	mHADEXwzywNRwUqRm6wRkBy6hTR3ceUYlXoslWxtRKrySYP86bsx3PVlNkePkAP/jaSQ3w0nvr4
	+XKUeBSb+wdEUsKu6s5kdnryekz/3jWpysjCGqxUetVSHOZ7GaL63DqsdW0OEjZWyxMQuBoOXr+
	AS9LHjX+9/7qkvoYZWpuzq8X3akkRlhbUoayN+EKadYUaKZ1W0Gqlhk6pwFfl+K0h+8BSyuFwug
	wiWJjOnHo/8k45x6wi97kt8CNC2hYvJ/u8efDeaA75YLgDRW8DcLP+CW1YvW0rmkfkly5Re6hM1
	sF1eG/Em/kD3VAAk6kVpMZZjc+weS0QYTBC2FZOzAf6adHdNoiInjQujYCm9T8nm7pY9flLNWLN
	/+iiKPlcvScBBZTa89Vl1xx0Cdq+2Bq8ZCE5gLSpiANiiUL3XgvQHQ8AtJD8bP2WV5BOWFbQmez
	+401k4cPlHGq88kvTUaNrO4CtJ+RJB0qzE99xsQcEU8=
X-Received: by 2002:adf:e18e:0:b0:488:5af8:eabc with SMTP id ffacd0b85a97d-48e38594611mr2733285f8f.26.1792746263679;
        Fri, 23 Oct 2026 02:04:23 -0700 (PDT)
Received: from localhost (p200300f65f19a9045816c66224fa2d94.dip0.t-ipconnect.de. [2003:f6:5f19:a904:5816:c662:24fa:2d94])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-48e38060522sm3907467f8f.51.2026.10.23.02.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2026 02:04:22 -0700 (PDT)
Date: Fri, 23 Oct 2026 11:04:21 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Brian Masney <bmasney@redhat.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Brian Masney
Message-ID: <atsi1jyUmLl96uW2@monoceros>
References: <apR-iuXS7NASU5Gw@redhat.com>
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
	protocol="application/pgp-signature"; boundary="ezgcxirkig67edta"
Content-Disposition: inline
In-Reply-To: <apR-iuXS7NASU5Gw@redhat.com>


--ezgcxirkig67edta
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated key for Brian Masney
MIME-Version: 1.0

Hello,

On Sun, Aug 30, 2026 at 03:03:38PM -0400, Brian Masney wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mDMEaLh3MRYJKwYBBAHaRw8BAQdARPKAF4yjTrxY59pqfAJ7DTMaWooQB8y56csN
> OYyQOUi0IUJyaWFuIE1hc25leSA8Ym1hc25leUByZWRoYXQuY29tPoiWBBMWCgA+
> [...]
> BQJqdlWrAhsgAAoJELfS3SddfsCH0YgBAIfautFexr9zkkoD6zVC+h80PCTS2wTN
> n2zuAY2+mK/mAQCoFp5ZUlMsSPmIFczdWXtJzQLJ92rqTYpzaaRhtXDfDg=3D=3D
> =3DySdV
> -----END PGP PUBLIC KEY BLOCK-----

For the record: This certificate wasn't imported explicitly, but the
changes went in in commit 03335e1ce5b6 ("Update from public
keyservers").

Best regards
Uwe

--ezgcxirkig67edta
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrbIxEACgkQj4D7WH0S
/k6Ykwf/UZNrlH/nJmGu82WpPIi9n4qcBNTfIEmgjGfU6Vs7ZG2MJKSb/gSaLzAa
pUxamtHV9HvxvOC60oU+2aYq7sgjdAuMuyhFa6gy/ulg2KCgDPUeSELZ8Jpyko9U
6Jr8012e/acyxZi2UZkggKIcrglguauCfck1oTBmvF9KDeMzyvgAx5ri1uprgoWL
lr23VPrn04JuasmIE3Z245jV8iZ4vAoLdZvA/19mVklAbjvrcLSGE7F4HpL86Ai/
dB3LDXReXUhhWhg8XdEsiw6gLSFA6Ds4ygW6oABlcuwmR3u8CnGtMslTyfb4Fl8t
bKS/8+lPq/+HomDFHocCEy6hmJYLhQ==
=nxua
-----END PGP SIGNATURE-----

--ezgcxirkig67edta--
