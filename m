Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.45
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793721599;
	b=jyhwQTH9S34X2uVzYJ7TAc3iACGnfScqJrFXWvTvaEiTRudzRc1eVUiNoYg3tgUWI6A+
	 ZJ/gz5EMBRDZmoluBDcfqwuC38X6mh3qCzUB2dgXcg/X3Fi/uSiaQylXf6lzLT+UwHcEb
	 6t4gTiBus7A4358YX0Pxv5TbOOzldV0V04jg/08RQ5WodwSYlqn9vsZf9oBw+bzSstj2r
	 ujg0lvw3pppVVjUQmPFtXtwcfDH9TkcoKI7P67V/K1M1RPdqumadfzSxZOupPldOkFE5x
	 M9QwscOjrza6e5avZ800ZxCUz4c/yExFJAUvAw2zGxJ1wOuhOi2Z8DK9TuHKtL7HoRQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793721599;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:Date:From:To:Cc:
	 Subject:Message-ID:References:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To;
	bh=c8de1eW2j8aDBB3c0AyU7o095e5vLZsQb2R2qUhBvc4=;
	b=kvGWdnUdjPpBM8dCTV2kZrAu4aM1/psA4e0ZsJLThPoKsw8tP8GVNkn1HO/nfH99xBQR
	 D9tYUlJARHcWGp7bMK2OvWb5UoFps+YB6sM02cbq+f9g46JKrg2jY39bu43TkpOYJBDIl
	 TDznLiEDRZ2lanM9w3qnHQy62JfWdECpdNuBUaXSQw/EqWmu7t3jkHwOlBh7i25iza7WT
	 lx9fCpeoy/p+Ejjm+CbzoR1fwk+UtQq1JZV71Gxex2SfReTLUni00dH4tUJA8lx/Xcgul
	 odqcRaX+uwmoOe385kx3+txoE1zKlP4UONYtfAqn3CaTOnTyv6mBN8myshGEGKXXEXg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=none header.from=baylibre.com;
	spf=pass smtp.mailfrom=baylibre.com;
	dkim=pass header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=aZ4lR0GP;
	arc=none smtp.remote-ip=209.85.128.45
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADED3606A326
	for <keys@linux.kernel.org>; Tue,  3 Nov 2026 15:59:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org ADED3606A326
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=aZ4lR0GP
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4a2000d5fb1so30209055e9.1
        for <keys@linux.kernel.org>; Tue, 03 Nov 2026 07:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1793721597; x=1794326397; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=c8de1eW2j8aDBB3c0AyU7o095e5vLZsQb2R2qUhBvc4=;
        b=aZ4lR0GPHpT5DgNhRvOWIHs7Br0LUaSKANV+QKq5R4MKB/jZuUgtU0sV/p5J6EKoRp
         HCen6P3dVhVJ5FiT5qdzSDn0kbQiLrq9BULH24WCugcA9ck7v9vyoMh/d4Rdgf3FXw6q
         jBGdY1685cQ6f0x7eXsAHCRujQVd7xxNd46nBsxVblh/GPOzMGT6YGTiXjNFQN5kSkBM
         thQdqSy0w42GpTlR9HI0wA/3jzhTgYyGUJ1BFQAJ+ww7dCQ0Vf7OwNYpoxqXkOLQ06ks
         dn36aZJYkPvveRMS315uC8rUGp89mx/zFk3IXFGlxK1+Twqg8HTtOOOYrjJncjV+UuTS
         lVww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793721597; x=1794326397;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=c8de1eW2j8aDBB3c0AyU7o095e5vLZsQb2R2qUhBvc4=;
        b=sMDJqqBstpWnyK+3iYz1sFh4AqjCDEYHE7GoKyWBALuiMQBdFKW23ZlrqCZ/6Cr9/C
         OtPaFHuQJUmt9VLfeGztG+wMitgkmLYibceutcPfI+wZCSKTvSyL9O6nzw5+Ma0lJID+
         iyEAk80Nca0R8Y0wTbAwkLwYnJIn2qzs3TJCsWq6cPP3kBQSwUqwDTozEpL9JCA6rjoV
         8oNWUbjRuglafhHkX2mz1X8Q+YurJvwBOba/JxzKHRUDv0iPWxJlAwe+bvgmNTFwMJ7N
         ZvCYXJDmgZ+wmnAve0fhIMpPIPu6G1ywPLTJh2HxZX5JSw7NKYsWsmk3tTvxDkAwWQ/8
         2VhA==
X-Gm-Message-State: APuU4Z+ahMTeFZ+ydrOrfTO3Jzwe+I0dj6Ot1Ookzl4nQYCTZ83ESvDZ
	CLibwSIB9IWME2Esn82G9HvKd+iPT7CWlwecHPjaZvgp05+okDlxCURWOa3hPye1vlM=
X-Gm-Gg: AYBFou1PUyUfMJr7KPZBShi2KZfDtW+eEvCLh6niMc89qASRheMCCndgIk5BMYDaViJ
	SZ6ERR8GcOoWHTZSgjgf/a7H763FyDT2i1Z7rcHWxDYoFtqktJNimjCUewp3Otj9FBhWw2fncIE
	pfBsij3vIEQ8gXSEYuMapF4j9dw05JMhvtmHRtx3vMrWy0HT3GHnf+J0r56dRKIvjbWpw5f21HI
	Ady3ny8zfnHdIYJqVvygBEsX98j55ZyQoPPZiO0HNr97zKoY2Lw7sOyTsLOL0go+802sJED1zkv
	9T8DzO0TdWLZrim047pISrXt31yWJtv3w6dJARwsA5cK+hGZbtwNARCZ4a1/upWEolOWPMaX0/T
	xIUrGONLh2moXbK3D0uaDmaJ5VvKKK7bEADb0R3549G2bbfVO1ZvgXoIxP9CMbqTjQYGBXvllT1
	xnZah9SLe3ZNsigeYQAtUG2yRertSDzgvfSF7LZyvQhSRCyLRFG25r9IOhW0kjCK4IpmdKLPZs4
	KwJsBkjf5UMJTbTH5zd9f2G/SCrFa4Cgfgqe5ouAcoTIryEmUcfo0hxTHhmKERGTny3H3ZoOwWG
	hmNmHvVBGeBeIq+BVcGbs8I5qQVwY6Y6Swm0vr+mn1a1N4hf18hRmIKNfWODtzcpW8ed3ZljBY5
	FzpuK+3E7qvt77w==
X-Received: by 2002:a05:600c:1f93:b0:4a1:7e76:d02f with SMTP id 5b1f17b1804b1-4ac180f299emr289536215e9.14.1793721596783;
        Tue, 03 Nov 2026 07:59:56 -0800 (PST)
Received: from localhost (p200300f65f19a9048e0e65dd41210f6d.dip0.t-ipconnect.de. [2003:f6:5f19:a904:8e0e:65dd:4121:f6d])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4b393fd1748sm22674155e9.7.2026.11.03.07.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 07:59:55 -0800 (PST)
Date: Tue, 3 Nov 2026 16:59:54 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Daniel Almeida <daniel.almeida@collabora.com>
Cc: keys@linux.kernel.org
Subject: Re: Key submission: Daniel Almeida
Message-ID: <auoEdAB-4-CTJipZ@monoceros>
References: <5B1595C3-5536-443E-B903-0EB7A5425711@collabora.com>
 <5198D2DE-784B-49C2-B74A-B1A88F33C05C@collabora.com>
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
	protocol="application/pgp-signature"; boundary="qtnzntl3cezekhix"
Content-Disposition: inline
In-Reply-To: <5198D2DE-784B-49C2-B74A-B1A88F33C05C@collabora.com>


--qtnzntl3cezekhix
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: Key submission: Daniel Almeida
MIME-Version: 1.0

Hello,

On Tue, Nov 03, 2026 at 11:24:52AM -0300, Daniel Almeida wrote:
> Gentle ping here, please.

I'd claim your certificate was added in
https://git.kernel.org/pub/scm/docs/kernel/pgpkeys.git/commit/?id=3517b5f94e2300e9d1cc146151d4ad451dd58aa0

What makes you think there is still something pending?

Best regards
Uwe

--qtnzntl3cezekhix
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmrqBPgACgkQj4D7WH0S
/k794gf6AnNCyh2x70b2fz3N6bVhBTLICGt54KmK83FL/WurWeoDpcc6DrvcOCoW
4XWA/oAKg028jZVQD7DofILTcVD3qFqcorZl4XYpWJEjORRJbpXCKX+uWMP7fs27
F+d3lpDR6vAfhxbe87BC3hzWG3sdYPPJY4gp8uY+izXk7vGBRN8/F/RxEGQcgVzo
kYyqVXr0HQBRifEmivSumSFo+5EecaxN5rPJDtdtREqUXfgwc4WnGCIjlZLpQZ80
3UwH+Vvh1bkHTienTjsq4xlo4QsuYOVPnpevYMKKCRqyxnjCj2doL0v770h/h+tx
UdakDVugldiSAX4rC09ir4UI+GnvSw==
=BqO5
-----END PGP SIGNATURE-----

--qtnzntl3cezekhix--
