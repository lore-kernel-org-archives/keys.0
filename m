Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591FA2F1FDA
	for <keys@linux.kernel.org>; Fri, 30 Jan 2026 10:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769769030; cv=none; b=M1tEooM4MQA7/yTxG4l/9bdbuUEl7aWTkFkbk3beTygEhhsqIq2NV+7pszvHtQiJDP2eQt30WXxMlRVLDPZTsZDTvP2j6UZfV6XrfRqKlZv/gs3kiP9U82hMvFpNlrQVejQAXIbsY4Em1RhKnttFKtJavTWPzVvofToSLSm/Vgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769769030; c=relaxed/simple;
	bh=SPpOobwLYYQwsPE5tDTa+y9OiZNPuLze9i46nYVT5Sc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bTyYEdhdB9Lbjrgz/yWJb3Qyt57Ov5Of3NFsSuXeiD6g1m2bSTG5wrQ9PiKU9rAP8ZiPmgQxHQ9D/IafBtPdpiKTabxNKt6jNnstwD55/rqwQaxGsVOewWJRlUR1HVOhMvAGMCxciT0MRNioFt6mhS1h0bCKoyZK+id2DQwbqqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YCxVg+2/; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YCxVg+2/"
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48068ed1eccso17987265e9.2
        for <keys@linux.kernel.org>; Fri, 30 Jan 2026 02:30:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769769027; x=1770373827; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SPpOobwLYYQwsPE5tDTa+y9OiZNPuLze9i46nYVT5Sc=;
        b=YCxVg+2/QUDyOIq+6k8TyfNvQNZiA7/1odgEISTJRx6QD4Z1Hju2mXHblTJujt9Uxy
         HriSjRHOb7r1epIh0VrBKSaudzhcA6V5E2XCjq7sISV1WD0PRD7oFxv/c5xS2i8NAI/E
         tl6H08g9ks0wO2XNnCmofJpgMwl4KQYgRmqiK2cT8wks8rTC21o5wDLSd2znLy0aLZHs
         bwT/4jZxtjIEH1s7Td5HakPuE/PajnUz6zXao6Rcz5UJ8Y8sZQX5W3bG645TCu8SxGxk
         AinLuKP1wTVqC/6Cvpkg8lzaN2AE3X15H3EnsBiunDIyKS9m3GnOGKzYpciZj0vN08qW
         TgMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769769027; x=1770373827;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SPpOobwLYYQwsPE5tDTa+y9OiZNPuLze9i46nYVT5Sc=;
        b=PkGyK8G3wi4bwmg5ceWb3CNkLyBPDjkO5yeeP0HYW1kmsK2FkXkuKIKRgSU2MSA7qO
         uB/gWZr4Ztw5xsGRWbLUcnqHZ9LpfTtBflbW6RmJSxi+zGQpBgnHs257U06I2Zshn8RV
         +CF6m9QZbnfvxL1kIUs6t1ygp0u92mPrI97djpOTcfLu+K8+/zlwk9pEjaftTIoT+tXV
         NHBFOJ5J2uAHufa51v4mI7MHTJR3taQQKXaW/VCo2tXtghj6lpv35L26x7mWDIYY6NQL
         5Euv8bR/Fk4R38IT2Wv8/9UIvSzOGeX+7yYvJ3eEZetf9E4qy7/wEX1rrSMvShvu0Dq/
         7MqQ==
X-Gm-Message-State: AOJu0Yy81PpagClcyhwzXYjlxudhEyGu87GdcNDYiBmkkaxYi7IbQpnO
	0rSt3/5qXffrdfnMSb/0Siv6d8/9E3B/pIPYq7Jp/cxxweosR0mMDs/g3O81OVbCfo9fyGjMR8U
	31Ttv
X-Gm-Gg: AZuq6aKxpaOvWXuj3v0CGgf5kdjIPrP5TVDbgYv/75+1q5/8uIMzwlLsgJoJXNC99DN
	1YO/lSdDSgvOFBEQOzYLAnFnZX8ErCwJLOPDSo2RCWavzimA3RnM59lwnEIFjk5emR8uAfCi8AT
	dtysGuNL1TAMq5LgHr27toVieN5k3DA2vxCYpUt8i7aJtaSz2Zq8sqURr+Mgsw2+Msx/fRjLDZk
	/di90A4Vkm3Ad/RcmIWEoh//0qBnMSzDDgHFjQI0ED+JNoeiZ/uZgtQWZkP2ZbAuMRjs7G1zNHB
	ilVb7BDslo3Vmx8PXdikfTH/MfqQ756ESEeAu5Xcqkfl3bVGNR+nhi1blsI9Xr71mHdc0I3n7T3
	SNeIgWchEyxJ+7JiB4Uiqj8la7qzqYIPvRO8ouuauM+DxRXRJyLzDQD4ONGh1c2TrEHJxZ8rxQH
	V/sUU1tj26Q+768ZCH7cyt3HRoDZm8hGIi6SG0iBLznbZ85vdL
X-Received: by 2002:a05:600c:6206:b0:477:b0b9:3129 with SMTP id 5b1f17b1804b1-482db44d215mr26063245e9.3.1769769026724;
        Fri, 30 Jan 2026 02:30:26 -0800 (PST)
Received: from localhost (ip-185-104-138-126.ptr.icomera.net. [185.104.138.126])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-48066be7404sm293282035e9.1.2026.01.30.02.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 02:30:26 -0800 (PST)
Date: Fri, 30 Jan 2026 11:30:22 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Andreas Larsson <andreas@gaisler.com>
Cc: keys@linux.kernel.org
Subject: Re: Key update for Andreas Larsson
Message-ID: <4lhnrwpyoiqkhf5pzohkafus5ewc3zk5auj6ynbtiex25jftqw@b6vgdpewwp5o>
References: <43f04d5b-7a14-429d-9c78-f4e7d702c6dc@gaisler.com>
 <43f04d5b-7a14-429d-9c78-f4e7d702c6dc@gaisler.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="423yv2w5jdot2yge"
Content-Disposition: inline
In-Reply-To: <43f04d5b-7a14-429d-9c78-f4e7d702c6dc@gaisler.com>
 <43f04d5b-7a14-429d-9c78-f4e7d702c6dc@gaisler.com>


--423yv2w5jdot2yge
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Key update for Andreas Larsson
MIME-Version: 1.0

Hello Andreas,

On Fri, Jan 30, 2026 at 10:06:45AM +0100, Andreas Larsson wrote:
> Could you please update my soon to expire key in the kernel keyring.

the update looks good to me, only brings in the update to the key
expiry.

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

Best regards
Uwe

--423yv2w5jdot2yge
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAml8iDwACgkQj4D7WH0S
/k5FzQf8DgYmA8uCdQkL8X79rodE9d0Sune7n3bHwez+qlANPlMa81JqMD9dASW7
xUH0+h3zhS6YEJQ2xN84f5dCs1+i3riXfqz89CV4L/LLFjlqXv/6k09Jiuv6FZcv
OCfVbadGanJ5qa+mqIDbBx2ZotRu8sSERAer1P56XT3AgDowVhKW8N1L2J/l9eCn
4EC7pZ6aspYkcOJTcl5B2ANjh0yziIBUU76wCIYT2xECrznteXVHjrq2bMeuXrzq
3ChNHX8Ln2nVNVEgoNp61uGmXE6PfsY2y2wdh1j/P1DZD0yz7cj+amljZkdDkiYC
Kws1TR5c6gvxaBL3s73oJlCL3JpbEw==
=yPMv
-----END PGP SIGNATURE-----

--423yv2w5jdot2yge--
