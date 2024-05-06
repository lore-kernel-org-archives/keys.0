Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5EF1422DD
	for <keys@linux.kernel.org>; Mon,  6 May 2024 09:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714988794; cv=none; b=fVPGP/fIYLEGf0EqBDr4K0CZ012eXREHEBJ1+Nn9e6pvufco2Qx1kYdOrtKMNPfZnSdh/BhbYyKo96sklApFM1zO+ABPeIn+BdwViNJDZ6fAeOQVWtq/OmWZVnIaB5xnq1Whg7B6AkDN5oHBr+LBwwPKUbZo4jx2U1J1e7smmlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714988794; c=relaxed/simple;
	bh=jPngIchbdsoI7hP5WbvytcqdDSZlKTI4+hEHKGdYj1c=;
	h=From:Date:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=Msedakqo2ZSqIYtprdwZx72D+WvruwNSsBmEv3WdE+9mh5n6VquuUhAOWvYIfeZRDR4uqjkRexI6TXNZdUEvWCr0fkZTKYdxbp6VTTlI61sKhPTtWZGxDqZPcP0gD9pFxrANQXRTFP4bxaah8W6hE3rE9j8RVf2V1h+LeJFTeYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=W/Zyf2ts; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="W/Zyf2ts"
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-51f45104ef0so1788817e87.3
        for <keys@linux.kernel.org>; Mon, 06 May 2024 02:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714988790; x=1715593590; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:date:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jPngIchbdsoI7hP5WbvytcqdDSZlKTI4+hEHKGdYj1c=;
        b=W/Zyf2tsTkbdjZ5PrU3WFln2tHUUPGynnSpoLuK6ty/t+PpWx58bRiynJYV3S5HPKo
         V3oo5do0pVZEXV7zxSmSqOKycvsAM1yMrtz68o08x8rmpFw+JScWFLyvApKJjrF6amsh
         9sNRhUgulrtubcya7eXE3McTvlElOrdR5F8Z/bFNh0cUxaYkkEEr1t69i0jDl3jh1XZ/
         gbGP+3ZUKJ3mSGZHyeBiGkJ8pk0B7v7UDL6zVD3r2WlWpmamUtRvTQ6dfQGU4VYKc3dX
         7rrm7h014HHexs3sNwDZTgbiQ6w2q6LTKoNRcY+QKRNEMGyI2oCqdIKgbUZYiiWpTq+w
         a2jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714988790; x=1715593590;
        h=content-disposition:mime-version:message-id:subject:to:date:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jPngIchbdsoI7hP5WbvytcqdDSZlKTI4+hEHKGdYj1c=;
        b=OZCKPpD6qfD8xuBEkcWNisRXG9P7HiiSdJ6bDaum3yifiqaJ7e02kgY8w/F24aaGFk
         OgTxOJxMaV4wHeqzkPSlQh4nTWpUJ5qMlkdcXvjNzTAjbyZ0UFr5nSImsLPeI+CAU0Zn
         RYg6oEdhBQFCG62e8+2EnHO0sLxMuj+b4fcHIFAwPeYggJ8mlhTpJA+s8cBQusnibWT4
         DF7uIA1qJsF7dTPaEhudFXeT24Xm7fdyRln8+iozXmc8JD3GgNV/LjHNWgd9rWZrTbKo
         AQXKH6a5PccGqhxVdmqBeccZ4Sc3tXtJKAV64fk921LLviXINwVZLdWm4frycOVcLZQ0
         zyig==
X-Gm-Message-State: AOJu0YwH++d5IGG8Au/jeMTZaRPGl1qeZAJFplVT2k3zsTYTLLkYxnpI
	UY/6Q56vMXfNEruehLXQl64BbnTZhkocbgxUuEPO4g3LQCAhvd6v9d9VDA==
X-Google-Smtp-Source: AGHT+IE8KN6/e3L661lT4U7XSQW9FcRVs2AYrY6VMnGyuzZE4B96mHvZJnnbTviQ6oY/0HjtZmwHaA==
X-Received: by 2002:ac2:58d3:0:b0:51d:d4e8:c71c with SMTP id u19-20020ac258d3000000b0051dd4e8c71cmr5469649lfo.36.1714988790037;
        Mon, 06 May 2024 02:46:30 -0700 (PDT)
Received: from pc636 (host-90-235-7-56.mobileonline.telia.com. [90.235.7.56])
        by smtp.gmail.com with ESMTPSA id o22-20020a05651205d600b0051d7d7a21d7sm1589169lfo.308.2024.05.06.02.46.29
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 02:46:29 -0700 (PDT)
From: Uladzislau Rezki <urezki@gmail.com>
X-Google-Original-From: Uladzislau Rezki <urezki@pc638.lan>
Date: Mon, 6 May 2024 11:46:27 +0200
To: keys@linux.kernel.org
Subject: Please add my key
Message-ID: <Zjim8wnUYbb4S8HG@pc636>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


-----BEGIN PGP PUBLIC KEY BLOCK-----

mQGNBGYzoakBDADIcjFjSbOW8ZrrdjkvEL/bQUNfrdad98rUz5A1WcyBvcqcQ4+f
Gmqen/29ifMpPZtRTwc6oo3Wzc0b5Boddg3NeCQf/TYSLU4q9t+1zD28lJbfPnVH
1zncZqTGmL/H9sAAiJYTKbZbB9s9L25zi5pZC9alfHEhGGDF+eukIaqlw6ApN38C
Cp1tztQnXWhg4IKHOyjd6EfCtBD6TIsw1lTPP9Dib6vDOQdlq9dPNEuW7rF5I7a4
P3CiI5Z6GtDA3fh+xFc52k1Xea44MUBP783g3EzPrJGTpKGW3fbdXz6aKkz30H8M
50R33n/FFFgW/ie8MXwGuGTdab5m9ked/eEtx9OiQjdvMIJJ9tX7ABdNJvc7v31a
Nix1mXRvDeQPCf9qgCiLf33t7P3R7VD+bkrFZBcapHqwNNYiaTX7fxhHHy/LjQBP
i2nni0f4oIsnqEMfkO1Lx72DUimsSY9Ze+qWK/feAUzYN2c/OaydHORbkFlQ7wT5
qyYCMYHCIyvDy0MAEQEAAbQjVWxhZHppc2xhdSBSZXpraSA8dXJlemtpQGdtYWls
LmNvbT6JAdQEEwEKAD4WIQS7pBF7+YBRg2flTQ8FiqSOcpYszwUCZjOhqQIbAwUJ
A8JnAAULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRAFiqSOcpYsz/dPC/9/l0k0
/ipCTUTSiOKFt3bPRdTqG4JNY/Ge6SUFUr0B6WSFDn6mRB0Tryy3NN/a/cosv7WV
HMNVS5Oagql5Y7AaNW9gMJpbuEYu7ZuIrtHYmUuMmsgVjIT61mgX4Kff8CL2JlT+
YrRCqnG6alr4OUcnjGyhph6J0iKopJEMfNIEwwaMREMpyDWAaI9LIeAyMcWXipBG
SEjaV6lF1tuN2/mwKnye5qTwSFB8EzgpvjN+JzYx2mEcHdsK1xcv+s3daYxZXt+e
lxvtVVbuF7yHx9/ZkYUpgwqvq3rxBvqBwhtuzQRCHqkMSigfQ6ba8LFVZ9W7fn87
KpOAFyVelvaKHf6XlMiiytFmg0v+KuxGCZguAT/Wqmcvc+BJebGRxCeEoExS0vKw
ycgGcgG52CFHDHgGTOfl71atn0LlVjwybDhzleUDJrQwFjcVJ4r01Sr78RC0qGw2
vp/aQhlthWoV7rqXUMVYOcNnLKRGjzlnWewd0u5RrXYAPsMGw3onqM5NFPqJAjME
EAEKAB0WIQRsrtSsz5EEisKhWImevxLzctn7jAUCZjPlUQAKCRCevxLzctn7jOdI
D/9k0p/VfFZ0YbYYhv4Zm81JDvp5nAVyvASFkpJofuxXroUqbsUfmrSnT0I+b8Cv
RDHKq19DB5UmofoqIYI/3V73IjkTcW1yGIjLCnWR6j1mIotUEGufCgTF2b+sqDbB
1tbyxE9wxdwKZ2D0eF9EBF6j9tsgXr9QD9JURlg7A0NHcddyv8dsVJzvWLAwcxhu
NBmRC7k42JkdKa1u8x90llhalE4XOqU07w3NORnsBgUaB/eWwb0HMgytDTfqKOuG
RLeD4I50C61lYxo/pxIIFT2fX+LuY9HgSYxXHwIXz5SmIsx/rfLEICYyDt5iaHl/
vZsgaM6DZZfY9YRH2PZFGq000mM8tFu5znIvgR+ts7vvxE4sidaGQD1+eq7YYpao
koc8r1bh7n/FMGenVN3hOJ77WxfEfSuuKsV64U0Cs+opBG/1ciJCD//+VA+137OS
FuGh7IadGW9/ciRbYuLbH5pUDpoehiYQDgDBjXCBusRNKNPg/FgXN+UMVZRKxJ9i
p59V1VHdF6/uPd76+VEadJQiQXq6MuV5A/LUeZfHoNOZt4LCFrIkxJVIBH4QkhHW
SL85NbIfxnc0qjDCfJSWgkpwLzJ72l0fxBmOpz+B5g91seBOOILytPMFgtOw/uIR
8y2mVBpsekApPNgmxPH2mwB1zKmrFXmR2KjCtT/CmLNz74kCMwQQAQgAHRYhBBtT
7WsFqItF/gKuYYbMQwPYcId+BQJmNSKUAAoJEIbMQwPYcId+WMcQAJC4U1WLxhOH
p2PVHFcPPBNT7EluIlCW67p/fz/7QoSq3Gwqy0QZUpXpoRO4zJIVEAG6EQHLIy2v
EmAt4DrfUCnz1ECdP1oPiyv7v/Uqgq6qxmi9Xkr+K22KdZnbjdTohpxCAoxEhjCs
VuJsp8DF1Hd7cdxGcI1RBDGjvEBA/nIQjTeK9ZWoGLBi1/BhSpRlDjcniF8nn/eg
3XpCPtMAjmsUoRYm/LpN4KMOX90l6IEjxTb/lHV00xrWQAqqsGwUxZltnexxTTk1
Ic0bXHrVEwl8EzPTyCPTUqlH+gM67x0KRVtw6mwe0X6Dy6FamZqlixIMZAaeJENI
OkBZCqVcgDvbwVY6RYaWmtV5LpBqOhHdq9zigXGKpVI7a9+4IAAct8xy7g9kWRtm
XebqUR2NuX5ljhAmVp4Vz5PiUTZhnerY0kTWPYQdi7xyYQGGVUq+dHAQZFfCFX9z
c7pmn+B9HLoj7p6PG4sSF/NeRoubx1rF+W5Wg7erHJv8ZejVznZwy7cxJ8uaD9+s
UdEk4/kmLRGZE+kXD1my33TP+Cn1lpXqnfAF+CyDVSzoQAbOVv1FMtM9gBylaw+U
m5bdG8RD96T4eQWHIdkNxv90kxsCUWC2nltxUCoH52+FTUPGjZNvX3gB1fd02b3G
pWCgE0x8RM5FgSUvleTK8Fmc79enzniVuQGNBGYzoakBDADjDhAggEyzzwWJdnz1
aJBOUpCXasmjNk5YxdxmDl55X0XfocaFbm3vHxsQxAVvPuWh8/gs7hr0lBIFCJad
J6XbY/3kkpDSzulGFwcrGO/73Hif5bnO3A7xte0omvN2dNegTE43g1Riet0PEzp2
5mNAZkzs8tpm/WCpb2MpoBy/69ygtD/Zt64e6ECXwofhZeFAmnjfnuftFO/xuekb
IROL+Z1v6hVhPW7PULh65z4Hzhu24xAf6kxKELBVeQKvTawve4izuyiuQcqCJ26q
Cs5h2T7wDsYGKmzOJ8Q/ohfbEy/fluijOxubrTWQqID4esZ7VyD4U8Yml6WUq2CR
JQW2aRfO/2DZcy91vZSxAD4UdUO2xO60L/JG5OIxHb17Sl2osxG6WfkcdBH1m+iB
1ILU4eBoMZgN34b2CoXiGBBTP70LigziiITeSf+1EHF8WmkUr6Igcme+dKYx4eqF
5l5RY2Eg2COM30lFdgg5OG4DjMWfnuM3jFIsNb9OHm/u+5MAEQEAAYkBvAQYAQoA
JhYhBLukEXv5gFGDZ+VNDwWKpI5ylizPBQJmM6GpAhsMBQkDwmcAAAoJEAWKpI5y
lizPrGQMALDCO41ASCGNj4mvS2sWRy4U2CD9hv0B9R4Fe0QddkV2OJAQwK8V06Bs
QL2PkADeKtUjq6wyPj91isfNJQeCMkpP16yyYzU+Jfz3ujnZleUYQ/tTjIDH/Nvg
+SgHEusx2yKKeYeVT4bEpGF1iLnXyGXEUan9EWUlWC/i/Ou+5mblC1qbfRPCBLfh
lKpMFu1R4qUlYJGdamJc2lYofIg4WlQVivTP46Sq0FBgq62AWwdFxYCPxQuAP1rf
ucANHLtMk+4y9oRPczcN9fR2VhRtpSShhXeF20gOAHqC+d3I4BWdY7oKpXVVopZz
7d/Y8jbnsTpZM/IvlwlKuN7aYiOGtebgXlmuz2THYecO0E8wg+5PAV3PR7qK15SG
gumMiArP9aMQWt6Hkiun8P94DpTMWzIWiz3961PR2OrSRb6oZxsmRRS1uMJI8e5C
7CwR8YmjmOYtjBuWTZHFiqg6GPWMtE9ffhuudnLsX8TTe64sdlhOpWCSxO8Gvc6P
d4QnUX88sg==
=qTPa
-----END PGP PUBLIC KEY BLOCK-----
