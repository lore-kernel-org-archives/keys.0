Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2892E5405
	for <keys@linux.kernel.org>; Mon, 11 Aug 2025 21:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754946383; cv=none; b=m9SP2TzSybDqjOD8jL3VOJFHJMlLClvgoY6ZUefLXJQlCIhowHaS8mzLurvE+dR9EZKnERQuLuA6czDKuAjp0+jXO12RyQLgmBf6kJoSg944T29/HYhEan06udZlEPHP/5bk2td3Tb4klPsl6ogIQeFZkOZONDbX2J2gM0GX/MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754946383; c=relaxed/simple;
	bh=cYpniurii6ZCyokw411vRWTTt+9hkWZBOKFoJTnBnXk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z+Iiy2lB848EFNfJy59sVfcmnGKPAGNRxgabvVDXxzIK46YuE3yMwcZZHw21QcGpgdh/1QkMt7Kk077lr8/CGkMETb/tnUcBfqPxmEHjM4P90afPLrEbBOMZbtX6eXUoHEIy8AwYPEzo++fgELx2vXHkow9HCBKcVoNgAt/U9nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=bqCBPkcS; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="bqCBPkcS"
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-af96524c5a9so632133766b.1
        for <keys@linux.kernel.org>; Mon, 11 Aug 2025 14:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754946379; x=1755551179; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ajC1FJsCD6WrhSLWftdPVQasc40huP63rm/8LF0rrUA=;
        b=bqCBPkcSNRjQGhBho/U4JvPGb9PomNNDBs8qTHusrXWp8aGgz/OAEtWuirCGyFyN7l
         0TaWd0wZmGreAOWkfggeUtBR+d9BHKo17eM2by47h6MQ8IBPZX6N56K+mmsmAz9xCuhQ
         Dxw6i9MMyV6xmuCC/8Ha4KlejQdoMvKMHBxDMmIs1spfE3XFhFwabutnB+BpdaKumBpW
         7gpZuctlcMf+93VjCe5NyoiVlC9sezxSF5aYd0x7VK3ZKEs7m5se7I0YOUXKvmXfA2R7
         WHvlubRNwe0t2WsoouuO/n2n3OSbY0JAKkk9v3eDbVQTcACA7tDJNU4b1uHOdVuSrgEg
         OrAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754946379; x=1755551179;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ajC1FJsCD6WrhSLWftdPVQasc40huP63rm/8LF0rrUA=;
        b=L10+nVZuCqIZlF43wTwy5x0Hd+pqF6Y1dpK2tYyX1WKsc28pSjs5w9VRVpjpkCOwVv
         b2Bep7thph4krgYrT0OvxSzA4I3nzPSErFXXZP0TxnyVSmDDMtrGHLkTxnhdYhiRWWug
         /tdt5wXOl4zSbGRlGvGDP5nfC6ckCOTpRwhk1xT/Uan1N6W1mU84hR/Ag67pkW+96Bwt
         DuapbcJdnfkdr9W1bMLffwy6aFedvlnGbe7E7Dxl1BpVb09lEimJmWmApFkjhJ+RGpEJ
         yRhsHnRcZ+ZDiAX0EqyMNt2+ZrrCrp2ZTsQiwG9L2QcZVniVGRH5wLkUEjTZ3f5rX2At
         EU+w==
X-Forwarded-Encrypted: i=1; AJvYcCUynBZzIe9b8d0IXmhjqQbrqjZydKPXMdv8RPgCryNh5WGzi8khdKxVWgwjwbSCgpjVU3OM@linux.kernel.org
X-Gm-Message-State: AOJu0Yxyw2P7Nv09UMCgWu3+Ag4CbQK+lgNtH/dBLVzYSuNSaQuVAsrU
	H9DMvvr6n2xauz3Zv4YQ96ZqLycDr8quKsF4rYdBgad6SpgwR+QGxTSuw+jl5J/L5qg=
X-Gm-Gg: ASbGncv9zMAhKThlX0NdGei5NwbhkwDcg+SnTWmIY/6n+s7j8MMyix1gq/cltYliSRu
	edqzC20/sLwQz5Z+OJ9os69z9/DlH5WDx468084fhhEyXd+uhJWgqiYpDD6fzAoeD9brQrcQIWP
	kdVORYICl6juXJiuQVK4XT6eEqgOhz1YuvRwoODpE9hwgwoKPIbxLu94WJ/WyNV9j9ntu6U4Hd6
	g5CGImuxIM2CTeeX3IUFIBl9SUdM930RQ9V36iDv1M2fj/pXD0veswsj2zk6HVpeHFlSHj35ha7
	vINriporo/PCMB8Ik39cF/3f2Issz3aKgMUIUAgvQ9XmyHKzfffY22XXNVQs7xI26C8UFZxcT8l
	WT/nvWgihZFQiVUY99WlW5iCbH1E=
X-Google-Smtp-Source: AGHT+IHljafR5h3KXydTglQ/+iRLc+edpT2AIPC9DRIUSkW2BIksfYKz/Z1Xo0ZGMaKXUWBgA2EbZg==
X-Received: by 2002:a17:907:724c:b0:af5:3172:ca80 with SMTP id a640c23a62f3a-af9c64d5bf4mr1362143866b.38.1754946379459;
        Mon, 11 Aug 2025 14:06:19 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-af928c84154sm1997549666b.84.2025.08.11.14.06.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Aug 2025 14:06:18 -0700 (PDT)
Date: Mon, 11 Aug 2025 23:06:16 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Imre Kaloz <kaloz@dune.hu>
Cc: Joel Granados <joel.granados@kernel.org>, 
	Joel Granados <j.granados@samsung.com>, "keys@linux.kernel.org" <keys@linux.kernel.org>, 
	Kieran Bingham <kieranbingham@gmail.com>, Kieran Bingham <kieran@bingham.xyz>, 
	Imre Kaloz <kaloz@openwrt.org>, Eric Dumazet <edumazet@google.com>, 
	Eric Dumazet <eric.dumazet@gmail.com>, Eric Dumazet <edumazet@kernel.org>, 
	Allison Henderson <allison.henderson@oracle.com>, Joel Granados <joel.granados@joelgranados.com>, 
	Harald Hoyer <harald@hoyer.xyz>, Harald Hoyer <harald@harald-hoyer.de>, 
	Harald Hoyer <harald@redhat.com>, Bothersome Borer <bothersome-borer@kernel.org>, 
	Confounding Cockroach <confounding-cockroach@kernel.org>, Frank Rowand <key_111017@frowand.com>, 
	Frank Rowand <frowand@gmail.com>, Frank Rowand <frowand.list@gmail.com>, 
	Frank Rowand <frank@frowand.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
	Aggravating Aphid <aggravating-aphid@kernel.org>
Subject: Re: [PATCH 0/7] Remove expired keys, 2024 edition
Message-ID: <2p6qsfmfy46zzvrpcmfhvrwvxcwsqhw4af3w7je7j5wiimfkfu@nnmuxnjfmswi>
References: <CGME20250805075932eucas1p17f15688e91b34f617fef8c2316d92a80@eucas1p1.samsung.com>
 <cover.1754379198.git.u.kleine-koenig@baylibre.com>
 <mx4t2fyuijj2einu4eibez4tjnrxpdo7ofutb7hh7ddmi7636i@gowa3on2bvgd>
 <hd2ahm4vhilzz3yuus63v3cbpf7zgxrl6uwtarjyjt72yxogt6@h6ytbjcygbev>
 <t4dynynvvtujdi2jz7jo4cyo4z6z5cxqh5swsdn7lmsa3fyq7n@czej5r32ngrl>
 <inbgo6pg27fn5r26664ygcs23m5ok34f7aso7gghsgqm7mx327@dmttrpuq2rnn>
 <VI1PR02MB6254D36C09E16074E34AD484A028A@VI1PR02MB6254.eurprd02.prod.outlook.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mgpdn6gb6ebpqy2d"
Content-Disposition: inline
In-Reply-To: <VI1PR02MB6254D36C09E16074E34AD484A028A@VI1PR02MB6254.eurprd02.prod.outlook.com>


--mgpdn6gb6ebpqy2d
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/7] Remove expired keys, 2024 edition
MIME-Version: 1.0

Hello Imre,

On Mon, Aug 11, 2025 at 01:18:19PM +0000, Imre Kaloz wrote:
> On Tue, Aug 06, 2025 at 12:16, Uwe Kleine-K=F6nig wrote:
> > I'm using these two (keys.openpgp.org via hkps, but that doesn't matter
> > much). the openpgp keyserver has the disadvantage (advantage? feature?)
> > to not distribute 3rd party signatures unless you do
> > https://datatracker.ietf.org/doc/draft-dkg-openpgp-1pa3pc/.
>=20
> Thank you for reminding me to dig out my private key from the old box.
>=20
> I've pushed out the updated my keys :)

I confirm that

	korg-update-pgpkeys --refresh --keyserver hkps://keyserver.ubuntu.com --ke=
yserver-options no-self-sigs-only 2BE25AAE87E87347

results in an update for your key extending its expiry date to 2027.

@Konstantin: Can you please skip patch #2 and do the above command
instead? (Then don't forget to `git add graphs/2BE25AAE87E87347.txt`.)
Or do you prefer a separate mail with the new key?

Best regards
Uwe

--mgpdn6gb6ebpqy2d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmiaW0YACgkQj4D7WH0S
/k6HaQgAmrR1lj60tWlulvnRK01XHmCAw3sjRiVaMwhBp8lLfzOGJAdUV4ViChuE
xSpPDuFYQOfCr2lHC1McTw7pYWdn8K7lnsZzm1aRlVlXzjrUhEMm9T8nhfyo65Hh
AyyQoFSaI1gTRVM2gLrGb9NruQ8Ofn/1PBwlzzGHQUQ9YioaGfG/nyd3EBBBrCTV
AkTy+wpdEvXFRzM91zHEg+uQKkOom+/HhfulnsVl0l/qyhKl1CBtJ4q74kybcbLY
tme8fz6YlKzzpO+thNRQAQm4NeoggGk2BOPEstrmtNtmnwncqPshnaxO5rsmFZDk
mjYj4MQaenZL6JnEIbUYHt3EOusazQ==
=vkXy
-----END PGP SIGNATURE-----

--mgpdn6gb6ebpqy2d--
