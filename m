Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.221.52
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793613288;
	b=cQyrCTf0tSq5fRDwtrg93WB9e+XRB2dnXPJDwI9cw6dBoEs3mnNsGDQjCh2vWCK943Au
	 WNLQDcA3PaZpKCjZVQ1i5RDaV+HN6ITDcCdTyfr8AT6UAgMRYRz4uI2hHtiuEWjttSWHH
	 4uSfKpTCedKGAtncS0mt1eKuebdgZpdxIoCT7SIOc6qabiIHdFcIOwThBWalOKZHAuC6K
	 5PThW4Fe1Ew0U2WxC0DH2tmVSmOYxczLYeDdP81c/Jk/xCDxZVfP8ArqW3qiZHnWS7r4W
	 CS3pJoCJdjEZs6De/AwPNtRJUNDhaQYR2TXp+eUCoVpoowNqNgOD6FZsGXWRA7qXq0A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793613288;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=PcW4qrz6xwWTBeS6asyQYqInmwiJPC1XKFLSzChtZFI=;
	b=VNeH7AM1UciCPcdqSsl+/z1+J+sqQX3gxvv2DF2iLAvk2ga4C5iurkkd9Yh7468m0Pdj
	 Sdu+EmpeWwl519gFP3uRpN9ziW5mrdN4+H+L+JzpO+9o8oJP5mR9LWDJz5docI5mONiTi
	 7evE8ON63KsKHoaO8vh/03FW3hufAJ5unRYe2pdMEZOgXC1CFsV85mHCCjmmJEFxVx28t
	 Ti86ztPJBL6wEFuoCdMi4sHlP5S2Cz4U+wbfsT+8f6oGYgqa/pdQtvAStiasoZqBHEbAt
	 RkJS670aqGNj90NntEAj0PhK4+U65up3152DI83xXJnGXPb3O583V9LcO7+pSvb3Ntg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=InmBHdaQ;
	arc=none smtp.remote-ip=209.85.221.52
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C57FD606A326
	for <keys@linux.kernel.org>; Mon,  2 Nov 2026 09:54:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org C57FD606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=InmBHdaQ
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-48afcfc4bf5so2785133f8f.1
        for <keys@linux.kernel.org>; Mon, 02 Nov 2026 01:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1793613286; x=1794218086; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PcW4qrz6xwWTBeS6asyQYqInmwiJPC1XKFLSzChtZFI=;
        b=InmBHdaQvPiLS/afj38LRrFXu1V4Max7ZOafpi5MZUaJnjuJBCYK6uPEh0R6gJKwx2
         RaWENrp7dLZ8eWbak7KMQxZ4DF+I1iGV0ez+JAnL9SllSiK3OE6kzSG/SSRNpBpYvlrq
         xtcDG2t2wHXGADtz3TGre50IXfYqPbiK6u6jms3Jv6yTTGMw4kJ9KYO981SgHXprkyxw
         kifxhhtFMPB5WC5v8MKlj0vH1t/KJl+2Eag8JrFehjjTLDCO3F2tdneipc3EoIHELtxD
         zfytyyGxJyAkHDRcEXqvvwMQq4tdgGRYglrZlIJrglk27Tzu91j2BrJHcr1oFiib+abB
         Il3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793613286; x=1794218086;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PcW4qrz6xwWTBeS6asyQYqInmwiJPC1XKFLSzChtZFI=;
        b=g54BO4tF7d1FrqD6pxKadw7M2md7oIoZJpQUcA0BQi9sNV072ljHJD17q72YilKNY+
         G1UQuEmwvwjgYy2lAGs3CPIN1sU9ODTRNVcq7j+7VW75/a76kHiDt5ngRc3J2K5IMUM2
         PCNjJyeb7wGJqHMg6ou31xumraQKyJ/fAFuHhn7KeDCrfSgdKzEYhP8W8LxqnZZCmMm6
         tm7IOOx2Gbuy/OV51nZGAS6lynotCkUVMrMgnzPoUZqJv6XK+sMr3PJjTPueyOEcoxTR
         vuwRWDHG6dC5juX6UOWs5Y33Ath5EKvFXrAUz0313jcUovSdlqfBkWJ/VZUXpMUooTc5
         4QEQ==
X-Gm-Message-State: APuU4Z8fm7z8JJv8GnzaVUA+ASMluRsvZUUiHL06RopZVr3Npmc9uvfB
	dvCkb4ZapnIOvXqwhKp5r8huwFakv7g/n59CxCU6x37IwEBkMqA1IgleWZEjimviPFwV/cC31Bf
	wtf2G
X-Gm-Gg: AYBFou0jUJ1eIOWSXovFfoIz7cL22O7J7OhqZMk9G06tuTK/bW1vDIsjWfsdcTPi53l
	5+w2eeU/QNmUfogg3RUDUC9VWfbnK21XUBTY5NYco0Tjn0JsR8rmkMy/QVwtYMHmlfeZbjraOfh
	1RoYgg/FmWbj2qOT3Sbw/j3jSXN/js/ajHWhUce6xfyor/TLvdfxhgjJZCtgDdlErFHM2T1yCIn
	4IYVhDixk/OuaI+ehR8M+6rgXrbSpMFzbTMCQGJQNGoAHQd5tmK95WdzA5C4BMqLbZO468fouWl
	nuce/GwVi2EX1eJzB/10f5hVeao4n1QPl2jI8jguKV3BshrBM0WHFM0EaBNZoby3b+U3jont60O
	nHFmtIq5rXSB4dKP5rAdccLaIR7OdBFtiB7shkhCu+3q1anKJhO/RrZg2826Gkk9FVL2Y4Youui
	lWDifGfUzai6+PECz7mq9kUgr8yt/AaLwC6cMEDZAzYpApTHVLHm5fidCcnYPRF6htkFUswXayd
	elX0yh9gJAL+2Nzsn8Ku4MDvo7j7CCI09JLIca3g/1PhVhp7JtSlQvanrsG7BQ5LjVSyDw//pnL
	gzMQFhAfn56hXJW18AI++U3MyHCanJqLKkh0GkR+erL42mGq9/n3EhCc+h/zPBVulumCdLasZDu
	QlsM=
X-Received: by 2002:adf:edcd:0:b0:48b:f08:8159 with SMTP id ffacd0b85a97d-48e6e502fa8mr16490374f8f.40.1793613285916;
        Mon, 02 Nov 2026 01:54:45 -0800 (PST)
Received: from localhost (dynamic-002-212-042-085.2.212.pool.telefonica.de. [2.212.42.85])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-48e71b725a2sm17919993f8f.13.2026.11.02.01.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 01:54:44 -0800 (PST)
Date: Mon, 2 Nov 2026 10:54:42 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Mark Brown <broonie@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: broonie@kernel.org
Message-ID: <auhb9Ewo5giIH4S-@monoceros>
References: <20261101223607.77B851AC5995@finisterre.sirena.org.uk>
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
	protocol="application/pgp-signature"; boundary="omnosbjcvsmlzewc"
Content-Disposition: inline
In-Reply-To: <20261101223607.77B851AC5995@finisterre.sirena.org.uk>


--omnosbjcvsmlzewc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: broonie@kernel.org
MIME-Version: 1.0

Hello,

On Sun, Nov 01, 2026 at 10:36:07PM +0000, Mark Brown wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----
>=20
> mQGiBDUOckIRBADKgdzcUZ+JPxAGEAUVL80SMZi6lWz4/B9L/t+2Xw6GUG2zRv8N
> iG3z0TRIROX9OsnnE8nMyD4w1Qpzx6wwuuWRlV++liQXDj52XmjoiQEgSCpApyP6
> 3XDUwDbipebEzSt8hl9w16lxoM08iVfeXoNYhOEgv+AOAUSxcbYDcZtcKQCg/9Vt
> [...]
> ziL4FL/7A4BGE6bXOQHVqyVoegVsXZEStt9CNIpe82SAqOvTd0fHIW68eVTXXilI
> ssfRy03lgaSwg7JlhJZqa3Io+pDSzu8jVorTn26T7KbxVhzyo1YInFLgjukkbUL+
> Rcxe29BeSHWd2kXCaeSTPvXoEWzySXS0UJEBVILvy8gyfK7gKT/p6puQX50Erfih
> LJaqD+Wz55ITWsSx5UUM1A7Dkh0ar1HeEmoACBJM54OkCf64QX8=3D
> =3D4lKQ
> -----END PGP PUBLIC KEY BLOCK-----

This contains two certificates, an old DSA1024 key from 1998
(4189E4231C09700E89119CAF276568D75C6153AD) and an RSA4096 from 2011
(3F2568AAC26998F9E813A1C5C3F436CA30F5D8EB).

The script to add this block to the keyring refuses to add the former
(which I think matches your intention) and for the latter a bunch of 3rd
party signatures is added and the keybinding of a subkey is improved
(from SHA1 to SHA512). The linter is happy now with this certificate.

Thanks for addressing that
Uwe

--omnosbjcvsmlzewc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmroXeAACgkQj4D7WH0S
/k56Wwf4x3eFzI01I+AwlsnFM8doowBk/3XTXVw87dkzKC75uwGFlaQ+JdTGhYat
Pg9aZXWUvQahWxg71QdK3u4A+QCzLxU9XjKx3QriB1gyYzwPL2WkuLvlJz/7FlGR
RvB8+/cVfbFrUzLBfn1/5rtcQwGm0Ifw8i/wwSO7RMHV1IZkAvXpw0R/NJ6UX0Bp
TM08rc3eomuEDA0U03glauYELRxMk27Fg4BcgDKgC5DUTcRQIwlre69MRMRPSo1b
jLVCfQHDFaWNF71LzQ3ikvw7boHncXM45pZj2MfZuE5zkfYZGN4vJy8qFpEBTqub
WcnPITAiokLI5VDrnrncJfraQeuU
=mj1L
-----END PGP SIGNATURE-----

--omnosbjcvsmlzewc--
