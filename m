Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A15025C6FD
	for <keys@linux.kernel.org>; Fri, 14 Feb 2025 10:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739530720; cv=none; b=LU+Pr0QwH8UgzMwsmUc6t5M8RE5zAYVvtQ85UuCB2c6xOHj84GSVYTVatq9sawK3RviPTOqwXhqZS1nujD6x46ljpxZVHQqtxGwYRGLy9XAz9JHA/hdduuD5xqv8eknAPxKC72bW4zXzV0CL2LGNGxHm7LfvvrmZnRafGw8lYzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739530720; c=relaxed/simple;
	bh=pv/nHnN4kehdA1yewHUkMDtatSLiAPNOlDKAOs4HRBw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jhgw4NTbJvjN7xbCHBXMkWY96rdkwjVA7APnXJeHcxweNhlRPmEd47xp9wRM01iSkgN6Hwp3ZwEZLNlcaEWv9d1s0kO0tZSP1cM8lz0OITIpRl4mglZGBG8S0ZCjeV8tggiA2zY0rjgShWpnu6FV4SY/BnbIc8GWxYcbU6an1f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rBMrWXZ9; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rBMrWXZ9"
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-38f2b7ce2f3so569003f8f.0
        for <keys@linux.kernel.org>; Fri, 14 Feb 2025 02:58:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1739530715; x=1740135515; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LwVkWXUsZqZy57ORtK4+W/eCtmAX0rJUbkI6qtUE4e0=;
        b=rBMrWXZ9zUaY8kPckAA+JLC+7PCFEWjzbQdd7h2/2NFOMyrdpqI48UfXH6miM7kfkH
         6In7dWmiakf9BjIEgrPWvvAO+gGcoIFUtB2I1SOq8sYh0hLDWK4bxetn+LHxmvmBE1Hu
         XETOYmJ2ec1jGk66Q/BOMA/KpRt7iYmoFx0LlXmCIVHSw3jjlkIEm3UphSXzjYxH1s8d
         7OS+6he69dKETMzhE71pszyJdyMHzKBAn/XKguM3qNYeBz/3jxB5UDvkn6Luj6wcU1T0
         5YmG2xoB1xHkfwaJ+BEMBijVwatcSGGZRo35oMkwZX45bxeTUlt9GIF8iBWQFoil73u9
         uLcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739530715; x=1740135515;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LwVkWXUsZqZy57ORtK4+W/eCtmAX0rJUbkI6qtUE4e0=;
        b=jJjt2nQyd64j9gsToXHxO5YsxCTKsGCj9YRDAaWHvoKAODb+7nBjsS8jm1u/zhiI5F
         1+Q2SHdSE3lcIdBfokR1VRyp2aT8X89vQHyiQa37S4tpR6G+57e5nEmJ+v7Z7Qc2LzGv
         exp1RghY31z2WM8TUGplz3mer96SNzxjdME1jZhlO4DoAH8cV428iTS2FtmLQ/zBOVWP
         rmagg5AbMYg124fd0+jlimN4kjlgXFJIXOHCJBCvQHiNx9sVxoK8UEM6EttQCWrTyFX1
         iRwoY+WgOZt41cH2dYJTJvhbshlxd7ob7Ph23lqjR+ZY/20RTN6lth+3vXxkKQywttIK
         YRcw==
X-Gm-Message-State: AOJu0YwDG+X7FoNNQ5dOiuFgByV27UisXCRDL2NIHFbgj270MZAqSZPr
	+QeckwqwP0D3yRxrfLe/8KpZRiZpEG4XjeCwxWdilWzT4qJDYbmqA1U6b79xFcg=
X-Gm-Gg: ASbGncvg6YNGdS97K+g41kJ2EeHXjJXWxlwpV/GO7OeAD4OBwSyMyeJuCm4qshL211p
	W4BQjrxDTlW7jmGoLuYJ2T/fnaaH/zo/+LAa2g27nGgSQRPUaQn2zQCRhABh5YlNJyRNR1sGOHo
	NaHQDVNtE/gM6NgiLEtN/4jC+LZs7jZiaEwdGPD/ntXDMuRAz/S86E6zs9Xvr47XhCcsmYp6pG4
	0LGL4JB3ErorJJDDJfqX7hVTUFvkUyFJYoovbVC66lcLFtf3gdbDBWndUwMWv+B24DV3up6b35o
	vj69au4HD74dWGutM7SKYvTu2Bp4q3KzkEUdUHgiLcWSvoEdOHlSietUPg==
X-Google-Smtp-Source: AGHT+IFv8kw91xlnAyhhGz1IUrxgbUcWJN72e3zgyK/x5WMEUUPyCDQslOoe+v5TlMP2EFo/T0Ah3g==
X-Received: by 2002:a05:6000:1887:b0:38d:d69e:1326 with SMTP id ffacd0b85a97d-38dea25917emr11631127f8f.9.1739530715253;
        Fri, 14 Feb 2025 02:58:35 -0800 (PST)
Received: from localhost (p200300f65f083b0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f08:3b04::1b9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f259d5ef9sm4280723f8f.76.2025.02.14.02.58.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 02:58:34 -0800 (PST)
Date: Fri, 14 Feb 2025 11:58:33 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org, 
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>, "Kirill A . Shutemov" <kirill@shutemov.name>, 
	"Kirill A . Shutemov" <kirill.shutemov@intel.com>, Nicolas Ferre <nferre@kernel.org>, 
	Inga Stotland <inga.stotland@gmail.com>, Kumar Gala <galak@kernel.crashing.org>, 
	Tony Nguyen <anthony.l.nguyen@intel.com>, Jeff Garzik <jgarzik@pobox.com>, 
	Pali Rohr <pali.rohar@gmail.com>, Wu Fengguang <wfg@linux.intel.com>, 
	Wu Fengguang <wfg@mail.ustc.edu.cn>, Wu Fengguang <fengguang.wu@gmail.com>, 
	Daniel Borkmann <daniel@iogearbox.net>, NeilBrown <neilb@suse.de>, NeilBrown <neilb@suse.com>, 
	NeilBrown <neil@brown.name>, NeilBrown <nfbrown@suse.com>, Lukasz Majewski <lukma@denx.de>, 
	Lukasz Majewski <l.majewski@majess.pl>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Inki Dae <inki.dae@samsung.com>, Inki Dae <daeinki@gmail.com>, Inki Dae <daeinki@kernel.org>, 
	Matthew Wilcox <matthew@wil.cx>, Matthew Wilcox <willy@infradead.org>, 
	Boris Brezillon <bbrezillon@kernel.org>, Boris Brezillon <b.brezillon.dev@gmail.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Paul Burton <paulburton89@gmail.com>, 
	Paul Burton <paulburton@kernel.org>, Chris Zankel <chris@zankel.net>, 
	Stephen Warren <swarren@wwwdotorg.org>, Andrew Grover <andy@groveronline.com>, 
	Pekka Enberg <penberg@iki.fi>, Ben Widawsky <ben@bwidawsk.net>, 
	Ben Widawsky <bwidawsk@freebsd.org>, Ben Widawsky <bwidawsk@kernel.org>, 
	Brian Gix <brian.gix@gmail.com>, Martin Mares <mj@ucw.cz>, 
	Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, Stephen Warren <swarren@nvidia.com>, 
	Jani Nikula <jani.nikula@intel.com>, Alan Tull <atull@kernel.org>, 
	Alan Tull <delicious.quinoa@gmail.com>, Xu Yilun <yilun.xu@intel.com>, 
	Alexander Shishkin <ash@koowaldah.org>, Alexander Shishkin <virtuoso@slind.org>, 
	Alexander Shishkin <alexander.shishkin@intel.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Keerthy <j-keerthy@ti.com>, Peter P Waskiewicz Jr <pjwaskiewicz@gmail.com>, 
	Minchan Kim <minchan@kernel.org>, Alexey Gladkov <agladkov@redhat.com>, 
	Ahmad Fatoum <ahmad@a3f.at>, CK Hu <ck.hu@mediatek.com>, 
	Stanley Chu <stanley.chu@mediatek.com>
Subject: Re: [PATCH pgpkeys] Drop all keys that expired in 2023 or before
Message-ID: <morfuhtm5qnmjqzheimdiultom73xwm4d2ur53odfhoajaeur5@kidqvdgef3ak>
References: <20250210110412.260635-1-u.kleine-koenig@baylibre.com>
 <20250213-prophetic-debonair-terrier-48d839@lemur>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zngyrv2le2nrvrbh"
Content-Disposition: inline
In-Reply-To: <20250213-prophetic-debonair-terrier-48d839@lemur>


--zngyrv2le2nrvrbh
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH pgpkeys] Drop all keys that expired in 2023 or before
MIME-Version: 1.0

[Dropped the recipents that didn't receive my earlier mail in this
thread. Added the affected people mentioned in this mail instead.]

Hello Konstantin,

On Thu, Feb 13, 2025 at 03:21:56PM -0500, Konstantin Ryabitsev wrote:
> On Mon, Feb 10, 2025 at 12:04:09PM +0100, Uwe Kleine-K=F6nig wrote:
> > The keys removed here are all expired since at least one year. Given the
> > keyring is regularily synced against different keyservers, it's unlikely
> > their expiry date was updated.=20
>=20
> Applied, thanks!

Great, IMHO this is a necessary step to keep the keyring in a sane
state.

I intended to send a v2 today with the following changes:

 - Keep 3D8B01079DE0DB06, 237BCB3666CDC698 and 077EA269D5B9D38C as they
   were updated in the mean time.

 - Drop the entries below .keyring/ for the dropped keys.

If you agree this should be fixed, how do we proceed?

Did you check the effect on the web-of-trust of this removal?

Calling export-keyring.py now after removing keys/ and graphs/ says
(among many good log lines):

No valid paths between Linus Torvalds <torvalds@kernel.org> and Minchan Kim=
 (Minchan's korg account) <minchan@kernel.org>
No valid paths between Linus Torvalds <torvalds@kernel.org> and Alexey Glad=
kov <agladkov@redhat.com>
No valid paths between Linus Torvalds <torvalds@kernel.org> and Ahmad Fatou=
m <ahmad@a3f.at>
No valid paths between Linus Torvalds <torvalds@kernel.org> and CK Hu <ck.h=
u@mediatek.com>
No valid paths between Linus Torvalds <torvalds@kernel.org> and Stanley Chu=
 <stanley.chu@mediatek.com>

But I don't understand why there is no path to Ahmad (which is the only
one I checked).

	79BE3E4300411886 Linus Torvalds ->
	E63EDCA9329DD07E Konstantin Ryabitsev ->
	E289A1F4351A51B3 Oleksij Rempel ->
	C3EAC3DE9321D59B Ahmad Fatoum

should still be in place. I guess I'm just holding the wotmate wrong?

Even if a path was broken by the removal, IMHO this isn't necessarily
a problem?!

Best regards
Uwe

--zngyrv2le2nrvrbh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmevIdYACgkQj4D7WH0S
/k7g+wgAoX/m9RV0V2/iKCV4kiRBghFf2ravafp61mnAR74GEKw/BYZjHYLGj1C7
EzGz7I8SC3eQ8l3YDi1w8dxBNkDW62LHOVqDCk2vNbBwsvyFlgP6TlIKyAWphCdW
COuzDe9oiH6kLUI7+7MuG5/D4mexD4oaZwX2vRGYs33gEpcyiSV3zmWZZbBwR6es
EKSBMJVUzLm+J/TD28QNgzEzVZFjAj2qRLXheebHKSo4aQJ8c/E6HNJ0o0nGhmCj
B/GDhP1v6gXpZMD7389VwRuJ45z/WQeux964voYlcfV9JtKEnd3Dw0OOrDERVW6P
u/utBXWBdCvH6ABdSmWBdHOmB47Z2A==
=haTn
-----END PGP SIGNATURE-----

--zngyrv2le2nrvrbh--
