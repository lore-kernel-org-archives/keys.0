Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0142DA75E
	for <keys@linux.kernel.org>; Fri, 13 Jun 2025 09:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749808163; cv=none; b=AiAoViO6emFzoGOQozTSUrkoaiL7g/ieCoek5waacvjfigXfcD3EfvXIoTfZusQbEkNlwQmV86dB1WbmA3nm1IQ+Z/MapMuEgBUXyMElEYs1kWKRJay7iikLMFRSxgNgK0BtCky6f67EN38aAIwDD5sxZru//ciQzgyhvvY4nhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749808163; c=relaxed/simple;
	bh=KzSmgmoFIN4VCSg9oAPvQGOQ2wW2v/UOtNLQbaXzVwM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IuyWACqjKmngO66CvSqyznUGeegTD070iwEfl1RKMhTT2cCVWEBxRloC4ix18D9jlagG4eVsJNWrnbJOPw8b8DkaoXJOJq2J+0GaqVF6pLHlRyeaYcK98P/R9zaYeG/dsE/m3PTAGn29wtm3b5fs+OH3E5oX0YLRjFHx25zr6sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bktf91Hs; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bktf91Hs"
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6071ac9dc3eso3299342a12.1
        for <keys@linux.kernel.org>; Fri, 13 Jun 2025 02:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749808157; x=1750412957; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HlnlCQ9MbAPJjgHIesTHsezYlYwDGTfA8cydIaVkKK8=;
        b=bktf91HssPuWSFQT4rr7mO8cwTuaE+7feotpwTsYSUPv33K0WtNl2LTovhTg4XH9Tz
         xhFt1e+3gFNqxHYewnBp5i76HVCF8Kewsg9E446xVsMIL9InR60G+PgXNl+5Pa6Lr7/u
         kuVfGKRqZC0sGigmBfSTu+eLMINX3CicewULDJOWUpskNeJInRPZPuV8LO16A67QwTDP
         /MCYlZ8FBol7X2FTjDSEfMPO9dIP/0gh35CCoKBjS63C2PHcaD3FiyY7AgSt1AhW4mjL
         oYSIexymqjrPR/72cP3T3IcT7UuIE1Fzw6CtFFla8on/E70HE0ecDE7rmP3+EjlzwuYv
         3Mlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749808157; x=1750412957;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HlnlCQ9MbAPJjgHIesTHsezYlYwDGTfA8cydIaVkKK8=;
        b=QTrV//Oh+FikMSIOCYBeivQ5gj2DS7TOfwNV1c4b6V4PXCRsmqwGAYWFSDqp4fMqBf
         BM4hFAhHVXp5v+1kpWonrc6Cy7LdLiELA3me6GJpg79JQQ+xdc4DDkdgL6QUo6ku+4Ui
         yeNBbTR7Duij2Q+HoNAuaHckU6J57cL08H5mHVhiNR/FFVhyf3LNEXlDO80+h7/JvxZD
         2IFzS1f09VUnvVkewjj9+ZebGzDnWdQ5Jm78QRYtvbkk6Sct4L5GxUY76Wx0hSx4tk2w
         l3ozfy3yk3rFwjO8dDYh51hJ12u9hNyIvocVLiU9g7Mqg2SZLVucoKaRnRXyU2VcrJDT
         IY2A==
X-Forwarded-Encrypted: i=1; AJvYcCWq+jMv1DrJT+C/BRBsnNNKOrinArRDgrhofgA6UmEaY1w4gE/7j3paMNu5EoHzCm+i0MKZ@linux.kernel.org
X-Gm-Message-State: AOJu0YwRv029g1s2DXibsDF4XiENNDckbrLMB1mEM4xzYFNgUXcYkj7X
	xtwibQ4sAaYgyl0eLTpbG6HsXTmsxhzTYusEGx6uWNbPKiKqueWN36AMksPobPe3DiE=
X-Gm-Gg: ASbGncsPQxK7W2695az4XHIylQv7pL3965S3Q2IB9cP/yVE7BwpMC/tmKcPp0r9Hqs1
	1AXF8WIjwjsIXjkXc3AXHUDBsEqPsBj60+ynrMZOSE393zZoLGqcvU/CP6bQtxdmh06cQoQNtWL
	l8/KDEN9vBNIvpZp/M1qFxBeQe0b5jVsYMNKwnTG3MR/J5Nwwhx+W5i7rtQi99Svx4+keWLi7TM
	FgPs5dk2za7iLUkkm8WB59SF9bFeFFPN6BsnnoJkXCLXW9EePmO/Gh1bwD2sG1doX2FvA8r5J4h
	JJA8y3WSqbX/z9Mb5hKNJMtTC/iyUEJB1uaVF/l8l90cDjgN6/FdSdur5UEMVJ61JKs=
X-Google-Smtp-Source: AGHT+IHGK2oofFP07OyUzdIq4KBMEqm7uiGDdBUZC73TjBe/e/r+5rZFBfYcsVkwlunQ8jFqaWXgSw==
X-Received: by 2002:a17:907:7b8b:b0:ada:abf7:d0e1 with SMTP id a640c23a62f3a-adec5caf435mr185036766b.37.1749808147444;
        Fri, 13 Jun 2025 02:49:07 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-adec81b8e38sm102887766b.50.2025.06.13.02.49.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 02:49:06 -0700 (PDT)
Date: Fri, 13 Jun 2025 11:49:05 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Vineet Gupta <vgupta@kernel.org>
Cc: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, 
	keys@linux.kernel.org
Subject: Re: Please add key for Vineet Gupta (ARC maintainer)
Message-ID: <mxya6iam6nhrdhj5ens4j3ll6mth7uwwygari3wvbpanxllbgg@pv5nte4y56nt>
References: <b4bad496-3b0e-4925-bdf5-4368180fcf9b@kernel.org>
 <ft3kdxdnwnj5u4drrl2rtgbir4zzpl6woky34drik4n3wrqoz3@npljuav53pxe>
 <917f4fc2-ac6b-4d0a-beb5-9db340d62563@kernel.org>
 <CAMwyc-TV9r1NNx5BPPjtqbdpLuXkT0oyqLb+S9yEcxFdOhB8Og@mail.gmail.com>
 <6776b85f-a616-43af-a16d-e891a86b1a7d@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="byoxrzkk75olf34h"
Content-Disposition: inline
In-Reply-To: <6776b85f-a616-43af-a16d-e891a86b1a7d@kernel.org>


--byoxrzkk75olf34h
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Please add key for Vineet Gupta (ARC maintainer)
MIME-Version: 1.0

hello Vineet,

On Thu, Jun 12, 2025 at 02:52:52PM -0700, Vineet Gupta wrote:
>=20
>=20
> On 6/12/25 14:08, Konstantin Ryabitsev wrote:
> > On Thu, 12 Jun 2025 at 16:59, Vineet Gupta <vgupta@kernel.org> wrote:
> >>> Before creating your next UID is suggest you read
> >>> https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considere=
d-harmful.html
> >> Thx for the pointer. It makes sense.
> >> Shall I remove them from existing key and send it over again (I see it=
 hasn't
> >> been pushed yet to the repo)
> > Yes, if you want to do that, I will hold off on processing this request.
>=20
> Thx, here you go !
>=20
> pub=A0=A0 rsa4096 2013-02-16 [SC] [expires: 2029-12-08]
> =A0=A0=A0=A0=A0 397A6E0AE47A85E76B74B08969D7F1DDE28AC25E
> uid=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 [ultimate] Vineet Gupta <vgupta@kernel.=
org>
> uid=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 [ultimate] Vineet Gupta <vineet.gupta@l=
inux.dev>
> uid=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 [ultimate] Vineet Gupta <vineetg76@gmai=
l.com>
> uid=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 [ultimate] [jpeg image of size 24452]

That looks better now. The scripts used to maintain the kernel keyring
will accept that key update, however your new primary UID has no
3rd-party signatures. And also note that the signatures on your older
UIDs are all done using SHA-1 so they will be discarded on reimport. In
sum there is no valid trust path from Linus to your key.

It would be great if you could get a few fresh signatures on your
kernel.org UID. The guys who signed your other UIDs earlier might be
good candidates to sign that without the need to arrange a meeting in
real live.

Also your key is affected by SHA-1 self signatures on the older UIDs.
The respective output of `sq cert lint` is:

	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (alias) <vgu=
pta@synopsys.com>) protected by SHA-1
	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (official) <=
vineet.gupta1@synopsys.com>) protected by SHA-1
	Certificate 69D7F1DDE28AC25E contains a User ID (Vineet Gupta (personal) <=
vineetg76@gmail.com>) protected by SHA-1


See
https://www.kleine-koenig.org/~uwe/resign-sha1/?certid=3D69D7F1DDE28AC25E
for some details. Also
https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3moty=
yoo3@7vf7ip6gxyvx/
might be good to understand.

Best regards
Uwe

--byoxrzkk75olf34h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmhL9A4ACgkQj4D7WH0S
/k4TeAf/d+aqaDDcuEMFideDJ2uk47CtuOXtyRUWJKhn+CuaxIls2lPqCngrJZx0
ImmLH3lGixbo69XM409gbdcp2T3AwB7rwJSU6jsLR3zKpr5OHK6FXfn3BRdKBvLu
OAZKQlK62qJbnCqYm+ftZkzewcPoBUJzpWm03Mr8i4x3dHrk45uVzSMjW+PV3sKG
vL7xDu2bZ88FxfBNxjN1IyIMP6nY+YvIIt8tCDl9bTAPjIvt35DewBsKKRpfvpA9
qe1xBsZqHGnDbbrVPKNWnvyErDJ8r5z9UIQKm890EQsfHKECj83g7xI4AW6LsHLP
ZYT4qKw18T2B5xRvVPLdqhB+Ez1I6A==
=LiVc
-----END PGP SIGNATURE-----

--byoxrzkk75olf34h--
