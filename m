Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.54
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793353794;
	b=4VxaAzjM+6sLW/RQipQIrGD/Ee9XYlOCB0mO2BPcxSKCQcmVXHH4ZE1NjxiRcJZyYPkO
	 uc+GMMH/PvSKXGEBIP3PEhOU2AzUwVw7cQ3+jKaCgh1xMptX1FX0hU9i9teL9HBKGm2yv
	 86fuJ0B9CiY7ZvGJaeRVaCWam8+yhva5QiXiBEFdzgEnAN6GzrLo1fMSpVa/zDStQZXTV
	 3x3JmGA2Z2llLBgUwrIFV+sPBpM7y2dOmUBrAnqu79ajSrpEkDh1aZO1yKkzCestFD7Te
	 I9TxspYhI5KyEoOnAd8XxGkyqevReKUTXON2eH/Nk8vRdmZ+RebaM4v/dcMQOP6gdow==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793353794;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=VldkL4jvrlQrjlDgheZzTpVJnBCmR0ti5g2g/Mt1y68=;
	b=HyCZElvWhKQi5tKJm6lh2mfqmCiYmjwQENfK04YiIgpSDovDNvG/88KWBfUPfK+u+X0a
	 4umnO+hrIQxwGsFKM+xUJVakX7D0S8PmSTtZRJdB/OxTqhsBF1QTicUwJNs/guaGNopEa
	 kGl0t9aTbhWunD/UCnvVir9za6LY+XAQblAD4mv3xM50fQN8/F9pLbqcwv23Idaj+MkUJ
	 UL7ip2/F8guu1ux16WFcxli1lYYtRor+NZnKWT7bJKFzg5E6a50nOcE681zsIET1XI97v
	 wpTStsHczWaPWc6gfN9Ha3qPTqqrctoaMk/hMKwjAgJrkLn5RYZ/lUUf5w5oSMtBqIQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=LKkwQBdN;
	arc=none smtp.remote-ip=209.85.221.54
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E3B9606A329
	for <keys@linux.kernel.org>; Fri, 30 Oct 2026 09:49:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 8E3B9606A329
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=LKkwQBdN
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-48dfc0421d9so415966f8f.1
        for <keys@linux.kernel.org>; Fri, 30 Oct 2026 02:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1793353792; x=1793958592; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=VldkL4jvrlQrjlDgheZzTpVJnBCmR0ti5g2g/Mt1y68=;
        b=LKkwQBdNv3/Ri4AIvn7xYKVBAH5wM8K2Kjc0ByKaEpM1PXHHglLGPwMVYsXBCqBhTz
         pAKIeOKHQyngMFDRXSknODe4mqDqGmsLzZ0UvC56tYt4bybunwuJwflD2vtJrueG68nI
         4bNPm6xBS/FbRNBSLAgzN69dkZyl+S80A5z/AjZ3+FynFfY6Q+TcsL/fAv8M0dpHYuu+
         vz46y9RrqNq/tPi99DUzAVbvv1RmqWfvgFFxIAXdMpgXhOr1fF4/3sP6vFQ7hA+1XZZs
         ME5CNfTYSiW99S4cMvY0eRdNO+qWFEeMWUUn6zrlgLTxvBgZ/xoV/DyzSs7Lu7BCJgBG
         8d2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793353792; x=1793958592;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VldkL4jvrlQrjlDgheZzTpVJnBCmR0ti5g2g/Mt1y68=;
        b=qyIveCx4huuppMt1ruLAPsE4j9QeRLZF0xcBNfKD1xBcC1jP4EnR+u6bS626DmM6hQ
         MWyoWThE1udA9pIrf1aG4rxCaIA+IWnRQagpT2qgFgrNzglkWYSJDbVvKJotSGvTTyk5
         iRAeSf+GsyDas9mTy8HE1k5pU1s4NXYuMidZ6GiN6wFdNN2UFhzf4mS6QeH4/Uqhz1TA
         4HPPuE2xYzJUEm0OlZrq/r2eG6IHrT3GjGr/rI8qWP/WhDx4AnkcIHptDdT3Ek1QZVVY
         Vs2UA+FwUOkmMsEdnkkjoyln+35IhHcHnBAkbBAqQ17H8DmDkweEodxkSq7B4sp3vJUY
         TQhA==
X-Gm-Message-State: AFq9FYLWGZr+zOLLvmGYA3jimCf5xCQ2jInN8aZusr5iMGmG6zlMQWYm
	X1R0yNDdf0JECp83by0H5pNDwa1V0+X2DuwwGRoTgNxMB0ywwCl77kA+0WeaNueg6jumrS2kfiO
	2g/lrLbo=
X-Gm-Gg: AYBFou3E60KDA0mV2HkT+H6kEs+YiQT0tCnhEOb8WVXUxHMr8uToB5UGNmIypKNvvNH
	kJYcDhZDrDiyZsmjDG3mukbUP1e65Q1PmKvkqgkItL9kg9TlyJNGyE43+ysD0UcRMfIX7R1ggXV
	ko2p3CZ3B2wAmmOveSDtC0WxjOdWxqZTYspRkP+a97i+mkxDGhLU7Bt9yEJVJYXWUoBWGBy8oAf
	oleCGcvO6+8h1kxYWPW3/ho467O5XBDOq/OJGNzcGxcGQR8XabmgFmJs6IZrLQmeYZn4Icj2Dh7
	n6We+DPW6S9nHD7oxqA8QOjolTABWuLeCs1yHxDtLjR8ZvD05UX09rWlEXbVXrAjb3uQ5++pK+Y
	02HdFd44Ubmoz4+4N9vgYcddqpTQN0MhCAdiwhlj3dUe3m64wuLez3ghs5zMU28sj4N2RV+97Vw
	IBsAiDmvU1O5ONi0sSSftkETVJ+qmJJEGKV8JeoZz60Ldh2aHUAcpc3NkPYqQUdZirvoBMMfXdy
	pCQkHpHA3k0rYT57MK6Qi6s38E+3M3hY1ESpDledHVCA9CLAh+exabL1uSB3aibiPH6z2HpPcMc
	UlbIv7fGx/8p4CeyyN2rsnl6V/q64JAEjNaBn2PbdtJfBHLQOtu9Vz9ec6oxJ5SzbIh/LHgdUFP
	aoivX/Fn+OUVj+1Z1
X-Received: by 2002:a05:6000:2085:b0:48e:824:f0b9 with SMTP id ffacd0b85a97d-48e6e5250cfmr3978110f8f.45.1793353791840;
        Fri, 30 Oct 2026 02:49:51 -0700 (PDT)
Received: from localhost (p200300f65f19a904f4ce339f1421d16f.dip0.t-ipconnect.de. [2003:f6:5f19:a904:f4ce:339f:1421:d16f])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-48e71ba2415sm2448012f8f.50.2026.10.30.02.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 02:49:50 -0700 (PDT)
Date: Fri, 30 Oct 2026 10:49:49 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Pereira <danielmaraboo@gmail.com>
Cc: keys@linux.kernel.org, Jonathan Corbet <corbet@lwn.net>
Subject: Re: PGP key submission: Daniel Pereira da Silva (pt_BR documentation)
Message-ID: <auRmkYkwHuQNY8BZ@monoceros>
References: <CAMAsx6fF0nS6E4YG3LwcDpecymph9n_QTU0L9M7KWrztEqEgqw@mail.gmail.com>
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
	protocol="application/pgp-signature"; boundary="lrbfqikpqkssc5dp"
Content-Disposition: inline
In-Reply-To: <CAMAsx6fF0nS6E4YG3LwcDpecymph9n_QTU0L9M7KWrztEqEgqw@mail.gmail.com>


--lrbfqikpqkssc5dp
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: PGP key submission: Daniel Pereira da Silva (pt_BR documentation)
MIME-Version: 1.0

Hello Daniel,

On Wed, Oct 28, 2026 at 07:25:22PM -0300, Daniel Pereira wrote:
> I am submitting my PGP public key for inclusion in the kernel developer
> keyring. It carries signatures from Jonathan Corbet and William Breathitt
> Gray, and I am the pt_BR documentation maintainer.
>=20
> Name: Daniel Pereira da Silva
> E-mail: the address I am sending this from
> Fingerprint: D295 744A 0A6E 684B 60EC 1892 6C05 8AEE CCBC 7A7C
> Expires: 2028-10-27

The UID of this certificate is:

	Daniel Pereira da Silva (Linux Kernel Maintainer pt-br) <danielmaraboo@gma=
il.com>

=2E I recommend reading
https://dkg.fifthhorseman.net/blog/openpgp-user-id-comments-considered-harm=
ful.html
and then maybe consider adding a UID without a comment as "Linux Kernel
Maintainer pt-br" isn't something that really identifies you in the long
term.

Otherwise the certificate looks fine. (Note, I don't think the above
criticism is bad enough to prevent your certificate being added to the
kernel keyring.)

Best regards
Uwe

--lrbfqikpqkssc5dp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrkaC8ACgkQj4D7WH0S
/k63qwf5AWfuPlH618yGCanaNgp6pdvJL/u3Bj/V57ZMXzVjK5Vr+dn4dM8N3dl8
Y9ZkzTOEmzdaW0xGiGettwMq/R6HZdJ9mJG9f20rhnHnvqMvIxEn04nk0oRbGDpb
I6ZnOFm3+j0pk4iCLCZr8Z2TguSZC0J4Jo9TjUkkF2EX+cQs4qqU8PtyhIKwMh2a
8dYiyPBNhp7Y0v2KmCLS5b1Jxe9qH/qXp7aCWRzwWPzJRThVmXJrHLJq70KbjNuv
Z2hbX0M0E40vt1YSiNDSUpbpmuqc2U+Ou17KVl9mJdylsE1nBZlFdisqZvKSwbOo
Ef/Vo+Tj0W696QCh8CbPwLAfB8bs2g==
=tmQY
-----END PGP SIGNATURE-----

--lrbfqikpqkssc5dp--
