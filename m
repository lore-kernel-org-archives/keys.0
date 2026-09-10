Received: from mail-wr2-f12.google.com (mail-wr2-f12.google.com [74.125.225.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D769649B200
	for <keys@linux.kernel.org>; Thu, 10 Sep 2026 14:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.225.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789049111; cv=none; b=OqGgUh8R0/vS8kvlB/Vpd4dby9WCAmlsfIOWhrZnJ1qWwXor/lFkCdrUJtI6n3CTBu0jWyev23HBqLxXU9pCp1ddw2b2b4+li9a2U0uLZNKjDf/KWTq99BLZdpH66rdXibOPgv1ZmL2ckAwwTcC8yoTNMZJ48Oc5UFZrTZsumFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789049111; c=relaxed/simple;
	bh=6KR2Iv19+hrxBW0n6/nis4TlhuHb5yEAPneCeD/hwFw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XMbBt8DWkN+jJ9Uwqpyq1wNHSEAOyPc4zbKICLXwQ36NZaZ3iBwNiwz50rdsnkC3nFTyevOY9+u2iWrSKVun9d2vuYyQCElCbFcM9i/uyr9NUBwKpZv2XZSVRZknlUTLVgFzPVTMumd5FumFMDrqekgz1dT5NOC5yR93Id0MkwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=mhHxNm6y; arc=none smtp.client-ip=74.125.225.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b="mhHxNm6y"
Received: by mail-wr2-f12.google.com with SMTP id ffacd0b85a97d-4843cedd129so1451772f8f.0
        for <keys@linux.kernel.org>; Thu, 10 Sep 2026 07:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1789049106; x=1789653906; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6KR2Iv19+hrxBW0n6/nis4TlhuHb5yEAPneCeD/hwFw=;
        b=mhHxNm6yZF3VkQPItdVHG2VpVckQm33iobzruDYkN2CtWW3/wPEbMNbYkU6MjomA4b
         NNJoiiuznROiuaTiUh2O4laW+9Y+z2tVuhrBLI7nSHBOU4Qg5nZrZ2d2CeJcvkXemL4a
         Adb5EjuTqltw3zTL5cdDZ0wbEKkPPVhq6KlQLVmCDw+yF9qUbUJBW3RL7c0XpkqW0p5b
         G7V5WUSyJ4wcBM9FW1I4LDR7xyvUEI8KHj3aQGxDG5cgYdtnc7P0JVEgdK/khOseznXK
         izOeC57TC4blW3gbO3psM/6XZ/Z35rHz0bly90StA9M/DWVXTvVT8IrKfRAn53doRWnw
         AAMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789049106; x=1789653906;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6KR2Iv19+hrxBW0n6/nis4TlhuHb5yEAPneCeD/hwFw=;
        b=QPd8Wn/udF3oC4rfB0NuFcAAyaNj5hh9RRKqvssdH4OzQ0uXRt5xIJYxaruL4TmmGw
         r+iQvtRrgqjXGz0nPgJUsOjsYKYhLW9kSb6QRQH7nmO+iUE9vCNx5H+BT0KVzpSmFKRI
         rkSTLER6ybOc+FdNZmioQbeQhWPA8j6clBfgNOsfs5DP19Vcm4fMRhSEu15tqRvN0YCo
         j2THcM7mVPo7SHVEmNFN1E+o1e+BVhEHopkzBJTJpItsnqVf4VP0kIzxK+fS+j85KBR/
         eLtga72bp2X/gHuEt3OYQ2tgJ/Bay3wBfbze7jyjDZkG1sF4qin+Le4N+zv7zar/X/qs
         h86g==
X-Gm-Message-State: AFuF++k8evameI94uvZKY04V7dip4qRkeF9BKur5Wl9mwajOfBWJasrQ
	eOX1XhICQhpZ5fmRk5Kf4rE5ZIUrw0VX9Psq7FhgEMPS/jIJ9oeb5fk2QGiAhCxLDAA=
X-Gm-Gg: AYBFou1zro9Qg+p3GFiKRItPsxI1p9u3h6Ktl6BW0cTxDIQzpWtC2Vldrfhum96+SFB
	H9RN1q9ti5N/DROxard3rHCXwwToL1WelZIAXk+Qu0zpuPCub6VuV8k+Olztbk1cWJ/GIuvuM/x
	kUWiRPUVaXFbcAVzCXNp6l/hQyYcmQxA5ULV/4HzwUgBmuwMbtMV7vwCZaGthpyRf20fF8b+tZP
	oTXRAbuN02hcS2UeJXK9RYxoo1OBruiCuZIDrwMMASnxtw3GGb8FCedmwVi3m7pF62MINpHfIvx
	SaOvsIOGTlC/A2zRtgs6Gf8mqhk2RzVT1hiB3cqcRZFaDT6EmZcrFp2aYGcivYBdb9krscsJkUl
	8wL4tyReRRdm+AAvNkQ9pnz1rBOCNQWcmLaTxB8ya4sJpcLcRr9iqPQ2qRJrQY14fAJDnQRc0ax
	fWRfDka1F1TbIsIGJfVggWTrCvttWo2fHXuggcQNlonNcu6lKmFrKv9MO5JsONtV4FEERV8n4je
	QSd8DMgKfYjQstdPmaBcIFWQOw0s9zX2JqP856Sn7aYoh0Zg+UBxY7CAc6d
X-Received: by 2002:a05:600d:444d:20b0:49e:6050:9fbe with SMTP id 5b1f17b1804b1-49e6050a010mr6366495e9.15.1789049105770;
        Thu, 10 Sep 2026 07:05:05 -0700 (PDT)
Received: from localhost (p200300f65f19a90462cfe0cd06b88b27.dip0.t-ipconnect.de. [2003:f6:5f19:a904:62cf:e0cd:6b8:8b27])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-49d26c2985dsm133215585e9.6.2026.09.10.07.05.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2026 07:05:04 -0700 (PDT)
Date: Thu, 10 Sep 2026 16:05:04 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Brian Masney <bmasney@redhat.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Brian Masney
Message-ID: <aqK37sPvrC8ENl_y@monoceros>
References: <apR-iuXS7NASU5Gw@redhat.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3uyxm3mxlbrr27lz"
Content-Disposition: inline
In-Reply-To: <apR-iuXS7NASU5Gw@redhat.com>


--3uyxm3mxlbrr27lz
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Updated key for Brian Masney
MIME-Version: 1.0

On Sun, Aug 30, 2026 at 03:03:38PM -0400, Brian Masney wrote:
> I updated this to include my kernel.org address.

Looks good, and does exactly that, just a new UID packet with its
signature compared to what there is in the keyring already.

Given that your certificate was already on hkps://keys.openpgp.org, but
the new UID wasn't, I updated it there. So when Konstantin updates next
=66rom there, the new UID ends up in the kernel keyring, too.
hkps://keyserver.ubuntu.com already knew the new UID, too.

Best regards
Uwe

--3uyxm3mxlbrr27lz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmqiuQ0ACgkQj4D7WH0S
/k6K4wgAmovVsJ40uIIZVTafgfvj6s1LXnuuJjJpanDckIJwuTeBjj4zmo+A7fNW
jMpeKRQ5WyNffwHJ5dROmjrCL6zxEQryt2NZLGJ8tm7ZDeveFfQtU167fLUQsX3s
vlARxLdotsG6DWvGSE0wDM642YwFBDZgAA943EWgrbac17Y33350EZZ/Mr0xQZ8g
HJp+6p1icZAg9iMLL/pquETNl72VOs5vGeWCqJUosBD2yZ1KFRmzQgeNl6s6/iXq
eZdZ/27rUhs3sbb0k5+mcfEcSU9tr/ncTr0Oc5IkrdLZ9yZ3bBVn93+MTMklzWeC
wFamsxJavwlZJCpZYqsCBDkzomLQpA==
=QCB1
-----END PGP SIGNATURE-----

--3uyxm3mxlbrr27lz--
