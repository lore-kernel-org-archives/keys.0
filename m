Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.167.47
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793226339;
	b=tPVR8M84rI6rUXMnit0gP20e+2xrTHhbvh7CFOwGafIqvjpt+iVhEaQk6cwiGooPlyDm
	 sJSthXMtvu64XVXxIonjLtq2MaQis2miTVQm4jccTnt0SRccpmct2Ht4e8+aU0vpVS/ZJ
	 34TXHpF/fD3FeSoBHZOXqwJA6ydZrMBs+5jPat62F66fH7UCSfV6eYy5bCWytN0xCV8Mi
	 ScMIH7cGRfCN7N+Q0YzhksAqQC/TKvnHXIQXvtyRXU5GcDL1jrGnA7y/ebJ+H6ZszR18p
	 ZRo54RmSTaTD/9bUt333MYWRbS+NVm2CrpBUArkO7dVerNfm0x2uC2Pryvy2mF50EiQ==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793226339;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:From:Date:
	 X-Gm-Features:Message-ID:Subject:To:Cc:Content-Type;
	bh=MSAhdkeEmbVY5ANW1jIg1dv7u8PaSvzwELRpCb3PdsE=;
	b=ZWBai+tbd4Q/7YYr2O2ruEuLWNS3rD2XbkKI3nIMpiJ/piAU57fFGWIURWQx6LcXNuYS
	 H6J8pGWuDCwkU5yYiHRm79edyEax2zB0undwxUDBkBzGAgZq2Nd01vde2vz+Rnq55rHKG
	 vSNjBtvF7HOJuNy808gM8j9GrCxiyPjeUjCnguobwO2UDKa6pAARwUQA3JaUng3w8NJ59
	 S1YmZNkT39p65V885L1DbE98ZTcmZJaTS+rgfA5fpJV9p97uFXK0/cLZhlQoJj3m+T+qs
	 uQqV5Kzh2wATpnLB+WHexuyDSbbhT7VJeDMuRknB+XUkwmYRZ4ZKsfUxEciFqD9Y24g==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=BP3inrX2;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.167.47
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB78E606A31A
	for <keys@linux.kernel.org>; Wed, 28 Oct 2026 22:25:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org EB78E606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=BP3inrX2
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5ba3ac592faso1771936e87.0
        for <keys@linux.kernel.org>; Wed, 28 Oct 2026 15:25:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793226337; cv=none;
        d=google.com; s=arc-20260327;
        b=dLMai4XTgmgirw9YpdTHjICf6DQXEHVd3E227ETRSsDyKe6LqUt4lt5tSiSS+qHWHC
         WhxNWSXZ8kl3pDDjH0UYtOF9MwqGSY2mENpohLu8XeO5vSVzGjgP+XOU6OIS1c6emDnT
         U0nfOJQfXet4eY/4skeMetncoc4TWv11197wnN8+wPjnJ8Qn/0F2c+mOYyNH33lPLlkk
         Iwj0DPVC+hbOymmZ7pCI5vYsrB0SfiaNJqbavcBDSCIIcGM9Yg5qitkISxZCPT9U8OC1
         Le9rtbzK/KPYgsymZKdloKVaA5qCtyIohGLzeHZsEzHYyzBGSvuR2FiVrUlLBr65QNcJ
         /mWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=MSAhdkeEmbVY5ANW1jIg1dv7u8PaSvzwELRpCb3PdsE=;
        fh=+Nc+NcTSVuJjU+O2E32LyAjBP3QhV5lrRu8KquLpQ0Y=;
        b=J0X349FMHcYM9VypDkOOJwjVKdg+5DGWvU9raLWJeTBGPuvEVDv61mEcjrxLGiiV23
         JxHVZFI1udbe2CdZW/RtAFJHsgiK/yKU+VOt+acK41qpMoaCZCk6woED85/kGweFUDQD
         1VwW0AfhDH0J1IaD3XmuZkcDJKiRvaYCwLPM3IwoxCCpdVX8t6SFGRKFg6hrOFVsxqck
         AUZ1IseDYrkEQFofNjsiQGhcWwSXJYm2BajNPiSN4Iag73IRzqYLRjxEXIdzv0EDCGY4
         +fSOv27BBCFnIT1IS14HB0csavNvwgmI6/vkGEzEymkq9Q3Qz6bu8+hSdie/apZs4Z1v
         cmFA==;
        darn=linux.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793226337; x=1793831137; darn=linux.kernel.org;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=MSAhdkeEmbVY5ANW1jIg1dv7u8PaSvzwELRpCb3PdsE=;
        b=BP3inrX2P898taVVVe0muJbQuRoEDUcb7JNm6Tvy7dcQhJZ8rfeLququJZjQYPBQ5V
         vd1bc8Ki2hz3NH48xSXtp8i8X2K35fGPG1VnjEZ62VJU0tNXONz2O3laUL2uBFLlRd8p
         lWp/C9Ly9W3OOn6zMRvnFC7aQUWqUAazlCA0stLFZJy8nZSvfuKm/MD2C6FoVf+ljFD9
         DZRAwVmoHFUd+NrA/vFYs/g2QE3guyHMQ79Rw3VuFwdSAZxic4M+7SWRy71NAIORKbzq
         Y/MNGr8K32P2EC8JM8Dh2pJiaB1yXYNU6y/bjuds8iWGNHU7XgHEgF6+gBridwetYhkJ
         r8xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793226337; x=1793831137;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=MSAhdkeEmbVY5ANW1jIg1dv7u8PaSvzwELRpCb3PdsE=;
        b=veRFABw4rb34KhGANmstHFVm50amqt1j9lH1pbg+aCKSoIVS8y4VezL52I1IxPSy+l
         5hRIC6CBJN6PiAeauYfFK+PbzIMBtFw3QWf4pAdDX+Qpf2Su0vRJi618M/SZQc58Z7do
         LpR6sOOjNsBqOOwcjNHII58yikwRgJY2QfLVmFdhhEQhPEywopLarWmlAAaaMOkpBRDY
         Dfgbpxml9Xe9RVVzuXXXgibdS7Bzu+BKAPcwWeP3tY5pPaRd2Pln98b5HiDNKEk0zbnH
         CPu6r3T22MkLO+8c/En9m9YDeyppADPdOr5T5jVTLAgYc0Gtw0A6pocuu1d3JxUhx4hH
         0N+g==
X-Gm-Message-State: AFq9FYLEK0jLNV1ZyVGdPHIWtMBogUOMWCZnHyS+IS9Epy7EPJQblnvF
	3NaH23jnVMBtTRrycnbF5ezErbRmAE/2dq0D+DzipXj2cVbubXBTI4qQcznQG7f4IDqK+hGpKnB
	87aohBNU5uIvGPkYhZ8sq43ZFMNP5ih+kAnSBkdATdw==
X-Gm-Gg: AYBFou2uPoFen6JzMTc9IgPA+OWblfDfms3bJ7J33lkUErTspbwAaOe6dJg+sJU+Isa
	iGrlTNUCuHZIBriL5LMuCSEZFiV/W4r6olFlLkLZdhJHL1a9EtfOr3yO/JUu8j51tb9Ym84/vQq
	GUGR+ChEcqXwfuXduYGPa3FOPts4EVcEaAurBRQpuUM+X0PXq83BXQ/wxsMtzwLYoa3XgkX/VFx
	4MCV4OVgtiipbqLIOK8qyG3trBDFNWDMXhZG/lYVGkW6Bhn1ce3t/No70UgX9YTOaGfaMRh76RE
	jtcicbQxeJJPpIv6sribvDU6+GRele+7TM7LZXS4Orfe7a016OQUeWn8GOnaUp1pBr239HkjpGc
	wl3HQ00HnJr9IKQGdL8KpsGlL7hBqU8rFGSX2jkK9GlJAQueX1OH9i9wK7XkH4PO32u/x/FAfJl
	ScCdP89z8pnRS+TiFlTF8+eoD+481BQumziGGXKz/nbh0zP/y+uj2NfGX7TYf9xkSMjMxFfvcR
X-Received: by 2002:a05:6512:15a2:b0:5bf:d069:4ee2 with SMTP id
 2adb3069b0e04-5bfd0694f11mr700685e87.23.1793226336802; Wed, 28 Oct 2026
 15:25:36 -0700 (PDT)
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
From: Daniel Pereira <danielmaraboo@gmail.com>
Date: Wed, 28 Oct 2026 19:25:22 -0300
X-Gm-Features: AclHuK9vmwwOZ5hTynk_tfiCYpx-7z_83uXzmVy3qza8aONpyD0bGbhFWWCHKRg
Message-ID: <CAMAsx6fF0nS6E4YG3LwcDpecymph9n_QTU0L9M7KWrztEqEgqw@mail.gmail.com>
Subject: PGP key submission: Daniel Pereira da Silva (pt_BR documentation)
To: keys@linux.kernel.org
Cc: Jonathan Corbet <corbet@lwn.net>
Content-Type: multipart/mixed; boundary="000000000000ceaed8065eee0ae7"

--000000000000ceaed8065eee0ae7
Content-Type: text/plain; charset="UTF-8"

Hello,

I am submitting my PGP public key for inclusion in the kernel developer
keyring. It carries signatures from Jonathan Corbet and William Breathitt
Gray, and I am the pt_BR documentation maintainer.

Name: Daniel Pereira da Silva
E-mail: the address I am sending this from
Fingerprint: D295 744A 0A6E 684B 60EC 1892 6C05 8AEE CCBC 7A7C
Expires: 2028-10-27

The key (with both signatures) is attached as export.asc.

I do not have an account yet. Jon Corbet mentioned that the key can be
submitted before getting one. Please let me know if anything else is
needed.

Thanks,
Daniel

--000000000000ceaed8065eee0ae7
Content-Type: text/plain; charset="US-ASCII"; name="daniel-publica-2-assinaturas.asc"
Content-Disposition: attachment; filename="daniel-publica-2-assinaturas.asc"
Content-Transfer-Encoding: base64
Content-ID: <f_mvsom9ps0>
X-Attachment-Id: f_mvsom9ps0

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptUUlOQkdueXJsMEJFQUN0SnpK
ZnZxNHIzTEdPdG5weTVXV3FQU3FJVjA3NDc4TGx1VGVQQmFjZzJwWnRBcHNMCkw2cFpwNGtJc3g1
ZFcySXVYaFhOZGdGTjlzTndXY1pVQlJTbmRmeGtDeUtZNyt5dktmazIwSW5xQVFQNzhHUDAKaVdv
RHhMSTRhd05yUnFiUEhxcFVNQjV1Z0tKV1k1VCt5LytGdVFyL1Q0WnFyU0l5U1h2SGZxdHBvc1lT
WW4wVwpodVgrYXF2NjhkQUR2Z2k4V0NqK0pndjFoVllONy9URUNLb0pYY0ZQSWlOdElHK2ZFeUxH
SUlneEpJclg1Vm1TCnVEQVd6a2hhRnV1dU8zczdNWnBHeW1KNVBvMytXdnJXaXRVSFFCeU5jR2JM
VTk5bXh5T0RDQ1ZjTlZ0UVdMT3oKSG9wTXYyclN6TVZLTTZkNnVnUGxyQzQ3d1diaXBVa1NWTTFK
L3p6Ry9zdU9IMFFyd3hHbnQySU1zcXMxQnp3MgppWGdSZWhsaUppd0lTTjJjNFlBSVZhTklTMFgy
M1cxSnpLZE51UkpOdzZrN1hJS0ZQUnVub0g2Mng1OXQ2aFhjClJMR2ljZ2xRQVkyTXJwUnFMcy9R
YThkYTBSM2pMOWN1Z0RjVnFHYVkvaGFWMlpueGRFVTJLbkx1ek9ObTIzWlYKcTJMTG03M0RKNS8y
cU55NE0rNU1vVTJWS0tLWnpITXFGWG4vdGFTRFBZQzFBcmVhSG5xa0VmN2tKMW0zbURjQwpCaldD
MDdsdjQvQUltUHFxQkI3aGVIdDJma3JWMkdjQldpUVJ0ZnJYR2FzRndQcjJPY2NxdVByV1F3MDlM
MzNtCjY4Z3Q2OFRuVTNyUE5oYkVpeGswdU9UU3R5b0FzeVkybEwxNzIzaGdCU3dYKzhod3lFa2ZJ
bmNXY1FBUkFRQUIKdEZGRVlXNXBaV3dnVUdWeVpXbHlZU0JrWVNCVGFXeDJZU0FvVEdsdWRYZ2dT
MlZ5Ym1Wc0lFMWhhVzUwWVdsdQpaWElnY0hRdFluSXBJRHhrWVc1cFpXeHRZWEpoWW05dlFHZHRZ
V2xzTG1OdmJUNkpBbFFFRXdFS0FENENHd01GCkN3a0lCd0lHRlFvSkNBc0NCQllDQXdFQ0hnRUNG
NEFXSVFUU2xYUktDbTVvUzJEc0dKSnNCWXJ1ekx4NmZBVUMKYXVKejF3VUpCTElzZWdBS0NSQnNC
WXJ1ekx4NmZJeGpFQUNVZjExNGhsbVhIVUxGRG1Vd3R6ZkpRelpyVndDZgptMHYrMCttNkFicnNB
Q2FBVkVHckVNb1dwcmJwQmZDeEd1ODVCSVMzZGd4THNEY1d2dkNzNGRXdkFjazNXY3FYCk9qZXlw
S2Fid1VRZkkxNWwrN2YwSWcwTEMxUjhZNWNnYzl2VE5kRkl0THdURTFxNElEQ3MrdXBwM1FZU2xn
a00KazdEdThXSzhuMUwyOFprVnVQclhwMGxmSGZWK0RHbGo3eEZJMjlqTFFCUkVOenJORGJzandW
c0RuZEhFNFpHZQpQS2xyMzJUKzJtcXpRUzJobmFMdVl5bkpUdXdyOUp0dHQ0SVJ1VHpDWDhlamV6
ZjVxeFJ1NStEV0FrTk53b0pVCjgxVHVPeVhINkkvM0g0SUJ4U2theUZhK0ZmNE5WOEN4Vmk4bkFU
M1NtSzZUWWc4OHlzZ3Y3NXdmREFZWkVMSEEKWmdxQyt2MEpZelhiRHE5d0RoSklNT25XT01UMHpK
TzBrUEpJLzdyb0FXa1d6WU5MVVBxQWlWWnBoVWhHaUs5Ygp1d2UvNUtRMVArclBjRnhDL3M2MUVa
QXRaak9LOWFYSkhSUUxYNWdWT0ZtL0tSTEdRSlJvVk9Sd1N6UmUzWWlxCllSVlJ5ejRodVdoN3gv
T2FzZkF3bE1ZRmdMbEtRQ1JsdDlVWmdiZHgyMW9rMjNqNWQ3ZUsrOS9sRnM2M0ViTVoKa3Q0RHVt
Z2g5YmNsdmZoSDAyS1BMa21YRUFodHIrWkN6dVRtVWxrMEZ1OUo0L0lteE5qTDJnemQwdFV6QmRZ
WApKWkZ3bER6cVROR1c0bUxReTZnMGhjdGVhdDltTkpSUFZmVVl4YUpaMkphcExxemY0ZjJ2dlBD
ZXN6akhzMXhoCmRvREpPNXBiZGtlT0JZa0NNd1FRQVFvQUhSWWhCRkRyN1VnaGFpOFdQKzZjZDQz
T05WWXdJdVY2QlFKcTRtNEIKQUFvSkVJM09OVll3SXVWNkk1SVAvaWNLY3JVRHlCb0dqaEEvYmFH
VVV3R2NTNDZjcmxYNG4zTXNPMXNBSUgzVQpYUHRBNlZDVkZRZys1V3dQOHZxUWZZNnE1MWMrS3ZN
L0NpaTBza3VPeE8zckhjSWVURFRBOE0ycjF5bFRFb2w0CjM4dkJUV0dVcm1Ma0NwYVE5RnhNSml1
enppQVZGQklqVVdkc2JSdnppOWhERmFoRUQrWVcyK2NERVhwY2ovK0IKajVBVUZVMmRLL05VVU9l
ejQrSi9oRHF5MmwzTFdpKzFrblZRUEtWZ2VFNFdlOEV6eEJQeHhwTWtseEFUQW40RgpaaDN1OEdD
R0JVZWt2QjZlbHpDMmhmc2Nham54SXJ2L3JRYit1Z2oyVkFOOUJEbURUOVNidTJJSHpETmRuUVVz
CnVPT3p4enJlSTNZRysydEVxUVN6OTFaRGhTdFIwRVFib0lVVFBBRXVqRFdjd1hYb0RPQlFjbjY0
M3VlcVd6N1YKNUtsOVI3eDlvVHRkT2dQRkcwdEhPUHZzV2FzbngzZjc1TEZKQzdud00xUVRUNExr
WTBkSXEzbVJXRUlINGdUeQpCbmtVQml3QjJvVFUyR3lRcWdhZjdKTkJkL3gzNndrVExGR3l5a3VR
dWVSZVNsSGV6MmNEenUzLzRQSnZQY0tuCmVpMXlQWHF2Lzl6V2ZzcU15STNqTEVVb3NYcnh0YUxB
Z3dRZjVJS2Q5QjAwL3p6N25xbVdBcHE2Wnl1bzlacm8KK29VQzh3ZWpJNC80emdSKzZCWkluQW5r
WjBUWllwaHN5THBxRWV4SEVDTndXbmE2alg2eEthSm9GY0RXTjRhNgoxbmd4SHVPa1dac2szVzFN
cVhpeHBQRXkvQnJBczVVSGJSSDRFd1htblFBTWpUTC9NVVRjb2NxSnF2Mi9MZFBQCmlRSlVCQk1C
Q2dBK0ZpRUUwcFYwU2dwdWFFdGc3QmlTYkFXSzdzeThlbndGQW1ueXJsMENHd01GQ1FQQ1p3QUYK
Q3drSUJ3SUdGUW9KQ0FzQ0JCWUNBd0VDSGdFQ0Y0QUFDZ2tRYkFXSzdzeThlbnpFN0EvK0xUdHZO
QW9DeUxxZgp1amY1ZWRCaXR5NlczS3VKZ0ZINWRwREhtU2p0ZDlRWWtrME13aUt3aHZvMUk4SmJr
Z0NSWkI3VlE4V1d0aDNWCkxHTklEWU1Md29IMmpsb2wyUXk1OHJLR2NFODk0bmxqNnpjcUFwZENE
OWNmeXBsZkRHSEphN3NVczFiSmhVNnYKZFVXYUEwZmY1YmpGTGZLK1M3aWs4K0c2N1lyUVpXYVpo
YWVXa3VRczBxbXIzY1I0VkFOU2F4WE5xOVNzZ1prQgpJQzVIZGhFS2N5bDhkR0JCSHNEUEVqYk1M
clMxQ3RDU1FjcEM0Qi9pSVM2NGpjUFBUVXJNZEp3STFZRWZiMHRlCnQwYUxmZUhSNVpDYTNLQlR5
VXB6STdUR1k2dUFMck1mZUgyZDFrZUFqc01sdHNkOFd1ZzhjdSt5Zzh4RnlmVU0KOGt4SGlRSjA2
cUdyMHJHSnFnSkx1L2RiRDY4ZjJpVkRFY25hZ3gvbjlDZ042K2UrWVFGQncyRFhGWlNlQ2dVMAps
UjRYWVVSNDROT2tMeTZoTkNqRDFIL0QzSW1tZFJtL1lFZ3JZcGJzUjlVREZaQzJmbFZ3UUJCYXFO
QW9VQjFVCmJZbWtFcDZCQnpLaUFBdlBVNzFtRDJuMWJZK1ZCMTh0emFOSnV0L2phZUJ3QkFWUklm
WGFtVVg4UVdUSnErUnQKeUF5M243Tkd0d3JFYi9MYmpZNmRCY0xyM1gxYWw1YkpJd3laaHNOeWp4
VUNsOWFqVlV4MmtJR1ZnWlhlRVUycgpFbkdPNXBHYzdCeEE0a2l6QmMrSHZRaWEzZFFDaXhiSHcw
aVoraTAraG5XcjZyU25FK1gwREI4K1N1QUdDQy9CCmEveWQ1ekgrQVhlOTdQSzR2MENjN3pWcjJK
MlVLbFNJZFFRUUZnb0FIUlloQkkwM3pkM2cwaVVvK09pZnRyVkkKVnNxK0VpTXJCUUpxUElKYkFB
b0pFTFZJVnNxK0VpTXJ1VDhCQUxld1p5VFN4U05HQS9sT0hMUFhwSGoxeVJPSApGdVlTZVhyK2Mv
bXZhNUhGQVFEVXlGOExRbnQ1K0FaUzFwaFVsUzh3Q2NWeEQzcnpXeFhHYU45Qk5MemxBcmtDCkRR
UnA4cTVkQVJBQXZpTzF2TUZGSElMSThNS2NhN3Azd041b3pUeFoyNEtrcCtmNnVZZi90SVZOZE15
eEEwRTMKdHpXL1dzcWZuY0VjQ1hTcGFJMDVkNkx6SFMyRHhCMnZTVGRIY29uMUJTOU9sbVArcGtp
QkZhNlJDR1kxVTJZcwp5NVd3QkNWUUplc3dYUHp0UE1CWFFSZmlqc3o3UjA5QVBod2xpTC9DM01p
R0NtaC9jWHFpRUxBeTVxOFNnTFJBCkZSeUN5Vzk5U2FWd29ncVIrNFVyZVpZMDdSYWdDQW54MGll
UkdGbVpzbHUvZFhqV05HN0JPanJaVTg4Q2pwdXAKQnY4Uzh0bWx5bE1jdGU3c0xtZjROUi9lY2wv
TU9FNkVQOExPai90QVordFNiZjdHWmFtR1Q1aFBNeHJvbGVUcQpaQlJJSjBBZWZ6M1pBd1hrNEVi
UktkaGZxWUw0dFpEZUJZNG12YjRnRDA3UDFJVXZZVis4c0ExOW1xSUJLa2FOCjZmUVluWTRrM0Jl
L2dhTDZ2Uy9FMk1hd053cUlUblhJMUtEOUVkVlhuVm5SaFJSTVYvR1Z5R0lnNlJvWGhVT2YKVXAr
U0hpbUd4Y205TW9uTXFGYUZ5dk5uSHB4d1laYmh4WGpaSHhLYnFPb3UyUERpOGlGeXJ4OStTNDhm
YmYwMAp0QkxTOXZUYlBvOFFHVnNIZEFYYzFDblZMUUc5bmZRYjUxcmkxWWdNSDd2Y2dRanhxblJ6
bzFuR09zNHpIU09lCkI3cnBVMmRpTWhWakJIRkxjK0tKMTdqTEUvV1czZXpPdFBmSWNpd3dtamNW
OFoxZWc5QWpVK0QzK0t1SVJBSkoKR2dYNnB5M2x4dm8yQjB6NFF0MW8razJZcWNXc29uNXYwcFBC
UG95dm5qUUhrVFpvRVNlWXdVVUFFUUVBQVlrQwpQQVFZQVFvQUpnSWJEQlloQk5LVmRFb0tibWhM
WU93WWttd0ZpdTdNdkhwOEJRSnE0blBYQlFrRXNpeDZBQW9KCkVHd0ZpdTdNdkhwOGI4NFFBS3NC
S05qMGNPbDBFZHhQdFQrWE5PQ1VYNTZka0FuNDFkWXRXTWg2cjR5Ny8vYm0KRVRscVkzdEJRNFIz
cU4xdW9KTXVoVGlTbmVya1g3Sm9NZ2cyVjZ2bTlkSmliTE1PTzFvaFRhSURETFZWWGZqVAp0WVVk
dGlReS9oUmQ0SzdLZXdYbDRLVmUrTnZFcjN3bldxVmRqMmJBekt5YVppWjRFMTlHQmkzcEpsSE5l
YUtWCnZwZDNjTUovUVNsd05Zemh6a0lNcWozbFQ2WS8wSlN0RVIwUEhBU05JSEI1Z2RUcmRPNFZa
ZW9EUzY1MjZSR0UKZEJWQ2ppODNtL3pEQWZ0dEpLTS9zSFdxMk10aGF0MTh3KzRBVHZ5dzhza2JV
Ukc4TllQekZsK3V0c2FmMHBFdgpRb01ENWpUdG01UXl5MXhlY3p2OXE0SlFpNEltVEN2SGJOMVk0
WFBaNGpYV2Z1S2FKRXJReGpoVGdOY1N5MXRGCmhTV1NFajNxeUlWNzBmN1FlUDVjZ2tiRDdUWmdi
S0ZCNDBvRXR3YXhUdlhzT3VuandGR2tzblFiVHRsUWQrYjQKMCs3bThjb2dYMVRTcFVQSG9xU1Rt
NHJKWXFVWmZlRUhIUVY5S1F1NTNXYzZhRUFUZ0libk5aSGh6U2VuQVVFVgoyMThVbExiWnZjd1l6
WGJzSlJSOFVhcEtZQ0szNVVDcWgxdUczTGRVeGRFTjZsdFovQStLWmk3UWVxcnIyTEdGCkJTeUxH
TFM3aE0rdU5IQVlIdTlZWjBFTkZPVy9RM3JxSFc1YVlFVHJYaFJoN0hwNHR0UG45WDk1T29UdDlC
S3UKNkJ5TU04eHFpZHN4N0x3bHltVXFLcmJPZGRDN3dBbHErMHU2bnFWNkNSWFh3L05HazFKVDEz
VWV3SStCCj0veG9nCi0tLS0tRU5EIFBHUCBQVUJMSUMgS0VZIEJMT0NLLS0tLS0K
--000000000000ceaed8065eee0ae7--
