Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB11143756
	for <keys@linux.kernel.org>; Wed,  6 Aug 2025 10:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754475371; cv=none; b=ZuPEyGPpQoHzp6y/jp8+mUSp5lZq4G7H5rQ+bdbJzpSzmwfU0BvClh/Bz0EcxiNL2scteMjPxblJenQHz+kKkxP/LQ01gFmPdQtaH9HNYyFU6h01edEoWQgyEK1Mie34Hi7AqpynB30jWvSW3h32vjhNEVi+cUcF6mi5ez856Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754475371; c=relaxed/simple;
	bh=h82uZwepef3tXJZLbt80qpk1AJGlq/MKFiNulKEypJc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UAl6iI3kJMBn8ovEVtQlstRmGehTC2tSxjJFQrB0z80+Ui5P72ywI51Oql5RTQlxisobNH6rbvyHOf5g5VwLXrMVvzzPcVnO1yBayKq43xaHPzfqSNf1p176woJSY2eCvY1N6oTpfnrq4K5suI+EKMH4cx4nXs88idkRhcEXurI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=owQU60xP; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="owQU60xP"
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-459d40d16bdso22903415e9.0
        for <keys@linux.kernel.org>; Wed, 06 Aug 2025 03:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1754475366; x=1755080166; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h82uZwepef3tXJZLbt80qpk1AJGlq/MKFiNulKEypJc=;
        b=owQU60xPYZuWCCdNcPNHmPvMECCIPCxpaddjjUPGAoKep5INFzoIYanqR1tgZXiX0m
         UqTVpsEk1WDfEz1eEsvpLCYApaMIJYW/0GWhx3JwpmFwVjYvOxqaENGE7xhxdnQ59G+g
         NxKLv0PmoRhahWXCP7+Dqj5OOoHtFLOW6ujOAHZjNTaLVvHDyvGzrjTS+aIZk9IZ+aEm
         rFkWRgdq00bFhZISDxJgB0olPY2z9QbbnpE6HmRnN+zAaWvjhv0h5jX4x02dvswdDO3G
         o3ZkWkTUx54cdaAOXSqBpjd41hFiiOt32469st4XNgyBAh4hdas2ViO08L2HgI7gttY5
         IIUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754475366; x=1755080166;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h82uZwepef3tXJZLbt80qpk1AJGlq/MKFiNulKEypJc=;
        b=PXljtjOu0GsTe4Ky6zyhq2Q/p+ToZg47GFJV9RS1+dQQr7+/QOxzcHDKwt16G5L+lu
         nsBlfjxl3P2qRuzSBX1ndjGeD2PftU3rcnuVBaqWUshMi86V53Y3u2jdNS8nUoM/fDCM
         OUARUq00/8mZMxLWl1RXud+zeLGYfvyvGW692JJXuvWldcc9L+VtPreD7fAq2mD0nt9c
         DKxTcGHNpUcS5lU/JYIF2i5iBWDy8M1r08gU83Tn7yx2tS7TC5l6emS9/GvAnlDnAIso
         yXSWViFqvI+3/6mAyL3YNMgo6c7ZiruuZSY4qNAlAefDeTo+LC7qQNCUeJsooMHu7Nsi
         RXbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUxa43F6dHTZYC8X0xVboYgFdQHVXQhugE101ZxCL1VKzR6u+DIBnhASnzTvAqyCAeKgTak@linux.kernel.org
X-Gm-Message-State: AOJu0YwJ6MWK5t+1kYNQHq9ZuVyerbSPzUQkfdUI034Bjz47FWsYj5H5
	TWSp7JHB1bpOMNN3WJn9Uz14fodY6FN4B16KZKFDOiPrb3GgPn03UMlnsTEhhX5fBhY=
X-Gm-Gg: ASbGncu5yyjTjFNSjBBQ0SQCVndERSmXWFubs++PyZI/rd2WSqhzEBRLXaEIH7yfQiA
	te6xSyjoZg/NBwi9BctK736o8WX5AjBizcN6iZyrtRCP/+Z5iYSeyD1IMBXDCqXzg9VI5NtmRsl
	J8qP7Z5tDi8Hz7SzAOSaebH5vQVEwBPLOqM/dL9EDkNq4c9tNgDvGqUkZ9RR4AB0oEGuVyJsJzd
	3eaOor7vZBcWR8mD/iijUFhwpGvgvVNyA7wE3UuPTk4F0i+Hb0U9z3DDP+gO0nmiTuzi8GUoI0y
	RD4DYh3f4V5M+Oq1uMttZ3Kg8VZgaD04FnlDXX+m1TWedQtIAZs+izgm3Rcc0uxUhlJntKbnwuU
	MQ/Zn+NZHf3uaU8UtV4QC+xnKsO2xYQRJfH5YpnyimeRvKEAPtPwzAwasVrskuPs8
X-Google-Smtp-Source: AGHT+IH8H7qQENqqY2diFWqGg00vRxjy2utH+sr0UomCp714ZkKwFhhaJr1TuvWXTL1ohU58oFv8bg==
X-Received: by 2002:a5d:584b:0:b0:3b7:9bfe:4f6f with SMTP id ffacd0b85a97d-3b8f491ec5bmr1648369f8f.44.1754475366293;
        Wed, 06 Aug 2025 03:16:06 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3b79c3c4d02sm21948821f8f.33.2025.08.06.03.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 03:16:05 -0700 (PDT)
Date: Wed, 6 Aug 2025 12:16:04 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Joel Granados <joel.granados@kernel.org>
Cc: Joel Granados <j.granados@samsung.com>, keys@linux.kernel.org, 
	Kieran Bingham <kieranbingham@gmail.com>, Kieran Bingham <kieran@bingham.xyz>, Imre Kaloz <kaloz@dune.hu>, 
	Imre Kaloz <kaloz@openwrt.org>, Eric Dumazet <edumazet@google.com>, 
	Eric Dumazet <eric.dumazet@gmail.com>, Eric Dumazet <edumazet@kernel.org>, 
	Pravin B Shelar <pshelar@nicira.com>, Allison Henderson <allison.henderson@oracle.com>, 
	Joel Granados <joel.granados@joelgranados.com>, Harald Hoyer <harald@hoyer.xyz>, 
	Harald Hoyer <harald@harald-hoyer.de>, Harald Hoyer <harald@redhat.com>, 
	Bothersome Borer <bothersome-borer@kernel.org>, Confounding Cockroach <confounding-cockroach@kernel.org>, 
	Frank Rowand <key_111017@frowand.com>, Frank Rowand <frowand@gmail.com>, 
	Frank Rowand <frank.rowand@sonymobile.com>, Frank Rowand <frowand.list@gmail.com>, 
	Frank Rowand <frank@frowand.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, 
	Aggravating Aphid <aggravating-aphid@kernel.org>
Subject: Re: [PATCH 0/7] Remove expired keys, 2024 edition
Message-ID: <inbgo6pg27fn5r26664ygcs23m5ok34f7aso7gghsgqm7mx327@dmttrpuq2rnn>
References: <CGME20250805075932eucas1p17f15688e91b34f617fef8c2316d92a80@eucas1p1.samsung.com>
 <cover.1754379198.git.u.kleine-koenig@baylibre.com>
 <mx4t2fyuijj2einu4eibez4tjnrxpdo7ofutb7hh7ddmi7636i@gowa3on2bvgd>
 <hd2ahm4vhilzz3yuus63v3cbpf7zgxrl6uwtarjyjt72yxogt6@h6ytbjcygbev>
 <t4dynynvvtujdi2jz7jo4cyo4z6z5cxqh5swsdn7lmsa3fyq7n@czej5r32ngrl>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ts5k4dq35ebja7as"
Content-Disposition: inline
In-Reply-To: <t4dynynvvtujdi2jz7jo4cyo4z6z5cxqh5swsdn7lmsa3fyq7n@czej5r32ngrl>


--ts5k4dq35ebja7as
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 0/7] Remove expired keys, 2024 edition
MIME-Version: 1.0

Hello Joel,

On Wed, Aug 06, 2025 at 11:20:34AM +0200, Joel Granados wrote:
> On Tue, Aug 05, 2025 at 10:57:55PM +0200, Uwe Kleine-K=F6nig wrote:
> > On Tue, Aug 05, 2025 at 06:42:25PM +0200, Joel Granados wrote:
> > > Thanks for this. I had update my signing key but forgot to remove the
> > > expired one. I use my updated Signing key that expires in 2027, so all
> > > good from my side.
> >=20
> > Maybe I state the obvious, but to maybe save you some trouble: You have
> > to revoke the subkey if you want to get rid of it; not delete it. I
>=20
> The change that I was thinking was actually updating my SEA key to just
> S and pushing it to the pgpkeys repo. So I had no need to revoke that
> one. Commit "a23ccb8 Update 5895FAAC338C6E77 (Joel Granados)" in [1].

You currently have a master key with sign and certify capabilities, an
subkey each for encrypt, sign and authentication (rsa4096, rsa3072 and
rsa4096 respectively) and the expired rsa4096 signing subkey.

I don't understand your plans, but you cannot drop the certify
capability from the master key, and if you want others to notice that
you don't use a certain subkey any more, you have to revoke that.

> The expired one came in on an update from keyserver.ubuntu.com Commit
> "50066c0 (HEAD) Periodic update from keyserver.ubuntu.com" in [1]. And
> that one was probably an inadvertent sync from my part since I try not
> to use the keyservers. I'll be sure to revoke it once I have access to
> my private key.
>=20
> > didn't test, but I guess after the patch the subkey will be added back
> > on the next keyserver sync. The same would happen to you.
> I think you are right. But I have a question here. What key server
> should we use? https://keys.openpgp.org/upload/ (as described in [2]) or
> should we use keyserver.ubuntu.com?

I'm using these two (keys.openpgp.org via hkps, but that doesn't matter
much). the openpgp keyserver has the disadvantage (advantage? feature?)
to not distribute 3rd party signatures unless you do
https://datatracker.ietf.org/doc/draft-dkg-openpgp-1pa3pc/.

Best regards
Uwe

--ts5k4dq35ebja7as
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmiTK2AACgkQj4D7WH0S
/k4W0wf+Ia5/UkwvjnJZHDN9zP/3LEZKBA8hN5HCJyOR4uuaCzavvkMMor7IpM0H
c8TIg5ZjtqHjdcKeVFdWsNY+FbgtKSuUMiH+jYEmCfL/vT2z8WbSZ1yuxpuQibUa
Fg8yPInG64Jkc6XbfUOetDRWogZhTfBpdLlRRFYdwvafxlosVsqD3E0QzYclFUwL
JskuHmaI6IeaxjAjM/B9rmBr0g3eLVx7jUtpwX+X1URZDy+BIQnlDvKQESoeQ0xx
80qhoVqIC3H5CVDv+0O2XmX0bIHJKXwdXx5I3WUI8/kUYYKzEylMsH9/Ukfk7suQ
ab1Ex8+aUyetoF0VKgPXzimEV1rB7Q==
=C1hj
-----END PGP SIGNATURE-----

--ts5k4dq35ebja7as--
