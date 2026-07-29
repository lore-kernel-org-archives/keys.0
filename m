Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB60A444716
	for <keys@linux.kernel.org>; Wed, 29 Jul 2026 09:51:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785318700; cv=none; b=sxLgLstxEj21UQB4DXWIEFr3fCWpHHb6oBpIP3G6U05IfPy8tWGVI0RrdLl/d09fDVfo67bEU86sYSAf8aIf+lCSIulecZAO3+onU+3I2G0IqKhTOwczLEoJyT7cwV4dKE8ZniShFKiAODJPJMMqemP7UmIuQHmztoZDCuF84tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785318700; c=relaxed/simple;
	bh=m1fDV28DaEWHVFZTIQQE3CgCteaweTLBfceheIEfwbA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Yu3iUswGAyWCJ6f/riWzNdXdcvuYMQ9y6K+1nEzX2uMGjMdYXpGFpN2M/piEoQe8BIvw+rrTcVX4meiexiIC3oKUJl6SxAsVY39b0XywGn+31r/PhQYFfPDTpvLrrHqbjwmzIpSrBOhQmk4SzsTC4/CgvQqvB+rghGYpdLloN5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=aBeOm7eu; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="aBeOm7eu"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=m1fDV28DaEWHVFZTIQQE3CgCteaweTLBfceheIEfwbA=; b=aBeOm7euEDUEZo6kRU0p7+J3gS
	QNaUJXXoyOWQr8PTe3rBLiolysl2yAaWheXeBq8/ZnwGtYCF71Feo5dvVmFGZ2BbI/Z6W6ss8Tzyf
	HYmI3rbp6mKskFTJfBqGRrlXMfzspCXs/nkgfkL+9FgWGhtJIecPzbBcSaoZRvZTyeLzrpno/YQJW
	/zyCh5QAf0olRmt3wJFH1d85DcjVBZdxSuFdyqkThVV9K1wLHF7L8oTnhCuS3aBhhtH3sbLl+HfAn
	Z35Tcz6wzOx/l5riMgYqpvwrf6a3+knm6/uuHC7IPj9nLwHAPVuomNsh6jj5ZoTKak/JfoaOD2h74
	AcUiqn2A==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
Subject: Re: heiko@sntech.de
Date: Wed, 29 Jul 2026 11:51:28 +0200
Message-ID: <3470360.AxlXzFCzgd@diego>
In-Reply-To: <amnIKs5_R8zMc0Ri@monoceros>
References: <3383405.aV6nBDHxoP@phil> <amnIKs5_R8zMc0Ri@monoceros>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Am Mittwoch, 29. Juli 2026, 11:33:53 Mitteleurop=C3=A4ische Sommerzeit schr=
ieb Uwe Kleine-K=C3=B6nig:
> On Tue, Jul 28, 2026 at 04:56:29PM +0200, Heiko Stuebner wrote:
> > -----BEGIN PGP PUBLIC KEY BLOCK-----
> >=20
> > mQELBERTj4ABCADFGnPgqgaWdMNZZeft3OMUO0eHc0GgHsVwpQDxH8wJjJ71c2zD
> > Is62dNr0rGezDCAwkEewq7U0h5xN4kCuc1Op704rXYHvq7zsOoHF+4xwqzQz9Mkm
> > [...]
> > 5vRtbMBxeBDKhzubOxUAy1KRjaISGTnJRN7LHQY91O2rInZtN1WWT39TT5nKctHi
> > japLpIdetNdyWqMA8ySGE2jvjXPoeZGbbpq3FkG0ZseT1UNZODYnlLIr65R+mXGR
> > 04h8
> > =3D8lSE
> > -----END PGP PUBLIC KEY BLOCK-----
>=20
> Looks good. This contains new bindings (for one UID and one subkey) that
> are using SHA256 now instead of SHA1 thanks to `sq cert lint --fix` and
> a new ed25519 signing subkey.

=46or the record, the new ed25519 signing subkey was intended :-)

Heiko


