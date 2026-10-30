Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=3; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793393503;
	b=bnrUN4VvnBDWkez0P4//F+NudwTtfgtShWoys/AV5U8CPXuCCm3U53eFK4dAWmC3UwZz
	 8RUje0jh0UB7PF5p/OcIYUeQRINzrS3BAOKxiYEc+o0OiuWQGU9IkBouLFEGfkOeZluf2
	 LoLmpKukH+hMp7MKO7C44LiFKAZ2suyyqbrD2OK9frNu0l9vxq+4ZZAacU8z6tOU0IG6j
	 9yGKVg+Z6zw5jNoFol7B9mdcRQkhVn68Sg2JEamX6WXaHvV/Z4H6fLIEAZ73UsePrGtXP
	 NRcNJZm4bwIJdqHftdYzGtCSi2fzzVbh2vdzoQZxvI1/l9A6b8ijWShbWEuH5/lDpzQ==
ARC-Message-Signature: i=3; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793393503;
	h=Received:Delivered-To:Received:DMARC-Filter:Received:DKIM-Signature:
	 X-Google-DKIM-Signature:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:References:In-Reply-To:From:Date:X-Gm-Features:
	 Message-ID:Subject:To:Cc:Content-Type;
	bh=Q1XwKF/5ZZkVIvo1iutoOq7sKe+WUu7rat9URrcbUvQ=;
	b=URHeKy4rahg+gjA0XpOqouVrWjMuPsw7dPOoBJVHWxN5h8YIPl9asPOdIvXeCH9wwGM4
	 mZ3ApzhKZ0yEl1wqiyNip7brEbQxZFDPfvK8PZ/S4KXVuNEXsVoE/gGhSAFq9/SZ8T3/A
	 c6SZE3iSWi9EBusx5tyjNGYhUt+jK0H+fR4fvTcDI1QB1Ym46wJpkKkvMt0JXjJXoK375
	 lnaAvui/Go42SOrHmUiuAFg1irwOI4SmfGr3s18g0o5GOCqvS/L2xd3HDDYGi7XFRj60b
	 0GJ2wjym4QBUzXbXTLY3pISMyTLSlFV77gWFHse7evcuNeBYj9Kyf6dXky4PuRMZpCA==
ARC-Authentication-Results: i=3; smtp.subspace.kernel.org; 
	dkim=pass header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=uOhEPMiE;
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6063C606A31A
	for <keys@linux.kernel.org>; Fri, 30 Oct 2026 20:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=uOhEPMiE
Received: by smtp.kernel.org (Postfix)
	id 1C7D41F0093A; Fri, 30 Oct 2026 20:51:43 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.128.176
ARC-Seal: i=2; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=pass;
	t=1793393503;
	b=q2HIpfmLcvBiUCn9OkCxCFqAnEPqKovaGsh1STwVqakIXvgCMRWa2C16epDTLIO+ukmT
	 veoO3zTPliq4eAo/89Ucg0qK5fKq0YbMhvZAxTUCAZf1xL5p9wk4SK2SOPR5xCa6ZOG+9
	 C+ffszja9SBl33ACs6CymZl3LAlCq8V7yCiXvVl2ipekRsH5avtnfMRon4ugyXVchLLKa
	 xZZHekKRAs4fQ+sOpNVz+Jmsn09Swq9QoWd1V6b7Ycp4d8vlRfsjbqiNV9upmy7uzPzzv
	 D1jxvl4Q+l/HOxs+IwYDK+X2wR5TTHuQmLPPcQgT7pNjpgwFIgcravLSzPWmV9mzspg==
ARC-Message-Signature: i=2; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793393503;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:References:
	 In-Reply-To:From:Date:X-Gm-Features:Message-ID:Subject:To:Cc:
	 Content-Type;
	bh=Q1XwKF/5ZZkVIvo1iutoOq7sKe+WUu7rat9URrcbUvQ=;
	b=EQAyaK1AZHhY7wjxlrdcVZZ8aWBvXjPpwyHneuZMe+0JQ06uU8f90LfwTwVdaqHb+3Bn
	 9cEAtt3H1Qd02q3BARmw/7xUGyR4NXhhf1GZn/Js1+AU97/aEZfpct1X7fdWEQgdBLGIY
	 P5W7hdM0Zcg0WaAiC6qFg2H8Ytm8OqyyDT235LXvy70/9p5mn7YwD62+CF8+Yi/R6bb5z
	 3DSW2M4se07L5zScAyq1L3wixazu7BFYIEIbBZ8jMvvZasNVTfsTvBX82DT47YpsWuUF+
	 GfWV5ivNKz43MeoNWcn0OzM3lQXow/aoUhkFequLMj2Fk0kySL6OnefWn1W93yJcKtA==
ARC-Authentication-Results: i=2; smtp.kernel.org; 
	dkim=pass header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=uOhEPMiE;
	dmarc=pass header.from=linaro.org;
	spf=pass smtp.mailfrom=linaro.org;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.128.176
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 421711F000C1
	for <keys@kernel.org>; Fri, 30 Oct 2026 20:51:42 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=uOhEPMiE
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org 421711F000C1
Authentication-Results: smtp.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-8ac9d666d4eso11444917b3.3
        for <keys@kernel.org>; Fri, 30 Oct 2026 13:51:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793393501; cv=none;
        d=google.com; s=arc-20260327;
        b=pAtnGWKr65jepZYb6DlnnPviG+M4Ned9428GNAd4SDUDnG0Tcwbjlx5Pnl1zxezSQo
         CjPBZf1PDI83pDcSnToWJwXhkKRcm5JKvWnVbvDn9ZLiKs8te3fB2CRYcJ8fq+HU43Na
         7ooR/omcpAn1F2gRNYB1z7jsQMlrCUn0k/RNc3Bup0kgfpzOUaFa2vpyUXmkUaC2SAMu
         5dmuzSl9tKwMok3kjukm/O9C79ou4X02qhxE4UXrjF2KYz7Q3V/Ab4M3jNZhtblo3RZe
         PhxonABEBElgw6sGj3z/OEvMlCXfv6w+AqLo7t7RW8fR24V16eN2cjyj+FE/m5KGR2nI
         PPUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q1XwKF/5ZZkVIvo1iutoOq7sKe+WUu7rat9URrcbUvQ=;
        fh=7enuQ/jGcog9hj3F823VUyahCKv5A5ffHrKyUGB2SiM=;
        b=nslPwhlSCkwBHiQmOPT5Y3rWq8J7+pI1yxqY2ruJCLU4FGCw81SiKL7lgzXr27SSPx
         eBMzPwpkxl5iUxy/g46UZUCvziSO9lQRvQt0uCnTx4T3UmxRmDs6T68aIQPtrbmD1I1j
         A/EJYmkmC8jXJcLYLRfVzdSR2Rw158LRdzGuA4GXKtNO5brfyHjvCXq+tu/+VAiT6f6Q
         dOgZ9G0uZpyBjSex7VyipORHsPmaGo+gQuYtUcxP0XmdReDgbwzqLXrRLImmdePZukne
         UwEQYNF7I9QFRQNhDsdOAYcXx0saWOogj/8gXEX1wvbqeC5Ei2VdL08NiGRwZSPAXMLA
         audw==;
        darn=kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1793393501; x=1793998301; darn=kernel.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Q1XwKF/5ZZkVIvo1iutoOq7sKe+WUu7rat9URrcbUvQ=;
        b=uOhEPMiEKwf1sEfUcxnZa26D3TIEKQPjpr6nxuyJSEY7JPZrU3q8z0tJdxJzoy1ggA
         7WgFmlXv1Z0OOhrW4r72sKVcwmrpZDr8wXY8XGtf03GeIKJRGgV8sswxN4F5tx4GN+rX
         TtjBl71N+UsveoQUMIPM40q/A1wowAbF9pt9kg+/nQv3Mdqw/+lTGpVCSxWFbmJv2FmG
         VzDAhhTDplV9QtWLAu0U4Rbg1dPAizHDPGuqkDuJQx58JGbuD0m4Z8ihOOOuVf+BHrjQ
         FH2NCJHaYd+VIgxIERLuAe4gWRaIEcd5eOHA13Zvyb/dpIUkHK1k+oA3Uj04cxJgD4n3
         IhAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793393501; x=1793998301;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Q1XwKF/5ZZkVIvo1iutoOq7sKe+WUu7rat9URrcbUvQ=;
        b=BpPRS/gElU/0Cp0PT5AkQgosM/k7Hn3HL8vVD4BxbosC2N6FrVrhVTT0ct4eQ2By1r
         ranV6QeOFyJMI/Vlv573oKOxeaOLMlfxUcRhQEd68oOzU01fO50E0PeWzXQuvlyY1AXT
         K/Xne7aBlKw7YRAauYQ1MxxGTbzsQfnHShdUesOwipRIGMQ+5xpp9ZgYa0vcuNP3DGz2
         885V8nMuXvcH5WGbRe23kva7BMnbRtdwKue6Sp8IcyEHNt2KnZsn9r+nURbJkD9CDb77
         RhY/OQbGdDZXrs3oCIZaMdk32L/j9HV/dGLXBD/KzAGRyPXMSpD1MbOE8jCWY/WrfQIE
         hf5w==
X-Gm-Message-State: AFq9FYJVbhOKkjzSm4u9mwycchb6mxPKfZ91T+SkqEkWAsNYSSP7iT+Y
	RjJvPoudee1u59vHJptMRyX6l6pS/cJVp5rZxdnZ3MQC+Gizw/B1ovSYqWDW3G/YFJlO4+B9chT
	SC3RohkEFqTIGl0cUu2h7abatOZFVJyPU1gIBWwRgx5tF6TS8DlJv
X-Gm-Gg: AYBFou27vK4q0Uh/zMDJXhSrGaR8F6C/Y2HYcKGXJZbUpkq2MU7KhAaGn3OrCrMF/Fc
	Rrbl5naSyqcp01/4G4up87rFNgFfcqgOlVjMcqt6M8pAOPjmBhP/XiUxbVnedTJ8UqiXeCnQjku
	xP4vSfYpIpc8qChB/PtCcqG2kO5tHV8NwZfQAdRidep2GFFhUP/rn3ASyxNeV4TClyFbq7Nb1W9
	DskwWYbxF022Bt2kpQ1xTdhcVNNvm3+4ING8qNLGJODNaHz18yFJ/Xfh0IgBSi2gpuxVKO+2HBv
	Ed+GnqN+tO9eJXe+Qwl/jYqLHEoETo7+tJ1BjINvyvL/yX7FXixxVteGrHbI8Bu1lafWi7bXGLV
	yACcoGvtRwSp9hutvod8iBIr2KmbJRYL2scpOMbEc89uah1kunlxxVaMUBcJTszTbLg3M8g==
X-Received: by 2002:a05:690c:e207:10b0:8b0:ea15:fb61 with SMTP id
 00721157ae682-8b2b676edefmr12008467b3.71.1793393501017; Fri, 30 Oct 2026
 13:51:41 -0700 (PDT)
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
References: <20261028-augmented-messy-prawn-9c4aad@vache> <CANLsYkz0+q+erQrH3Rumst0+E5L2ZS8ooe-VRfdYZed1aZ=Q-w@mail.gmail.com>
 <20261030-artificial-weasel-of-leadership-2befa7@meerkat>
In-Reply-To: <20261030-artificial-weasel-of-leadership-2befa7@meerkat>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 30 Oct 2026 14:51:29 -0600
X-Gm-Features: AclHuK9bfQwCgPM8CYUpfpq5U17rjkdVNTARHYdc3NzkmE-vF4esm8nvdrvACzs
Message-ID: <CANLsYkyGyVnaLTgPU-VoVKJfZBBjxn2xNT2+DwoVQJUiYmrXCA@mail.gmail.com>
Subject: Re: Fwd: Your kernel.org PGP key has expired
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: keys@kernel.org
Content-Type: multipart/mixed; boundary="00000000000092689a065f14f629"

--00000000000092689a065f14f629
Content-Type: text/plain; charset="UTF-8"

Trying again...

On Fri, 30 Oct 2026 at 14:25, Konstantin Ryabitsev <mricon@kernel.org> wrote:
>
> On Fri, Oct 30, 2026 at 01:40:49PM -0600, Mathieu Poirier wrote:
> > Please find my updated PGP key attached.
>
> Narrator's voice: it wasn't actually attached.
>
> -K

--00000000000092689a065f14f629
Content-Type: text/plain; charset="US-ASCII"; name="5378A31CC0EC0959.asc"
Content-Disposition: attachment; filename="5378A31CC0EC0959.asc"
Content-Transfer-Encoding: base64
Content-ID: <f_mvvg5vu40>
X-Attachment-Id: f_mvvg5vu40

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptUUlOQkY5L2l1Z0JFQUNZSVB0
Skl3TnN6WXoyVGpua0ExV1lVTlVhWTNNYWlpOERwc0tON2R0NlVZMTFGL3pUCjg2QmVmY2VqMUtY
akR6ajdaMEozbXpmdnNNQTZwdXBPM21CQ1hvK3d0TTNNb0JMK3VxV0RGY3NxMU9zQVdPOVoKMmJF
U0dMZUlCZ1VheDRsTU9lOCs4QUcrUjFtVE5Xejl1U2V5dGJsajEwNWxLY1k5OThMV0tZMTMyWHNk
UWI3RApSUnhzRkpaZGFYUHhSVmMzVzZGM3U1OGVCYy8rZ2hJSm1wTmw1TXdJQ0tRcW5tRFJmcTRQ
bWpmR3hoT0JTMnhJCkxsbmpOejdPL21YRU9zbEhESjhXcUZFay9DdUFSQ0dBdlZ5K1M1aUtVQjJX
eS9hUWdBVFA0dytFQmwxM0NoUkYKVzlZc25xakFiZDFxS05RZzU3TGFtcWxIV0lPOU9zZnJxb1ZD
TjRMYVIrbG5UVFVySzdoK2hhOThEdGRla0Zwawo5ZXRsTDZ2ejkxVkp1QU44QkErRmpRdjd6aXdh
b3QxRFNpVEFLdC9JUVhEMC9tSkRSVlN4Q3dOaUJtWi91ZjhxCldlQU1QZFQ0UWwyOC9uWjdrUjVM
T2U4TEwyS1J3OEppVExtRmcvU3RyOGNpV011dUpGeHhwS2xHNWlyc0NRenQKbmtNcDJUV0lENDU0
TFFiL1hUS0Y2QWdNN0ZaSndZSlk0RlloVnpld3dNRkVqL2V0alFmUXJzeURSWDlLWmlXYQpJb1V5
ZzEyLzdwTzU4S1V0cGVlQjdGdklIVW1qczM4bjVjL1h6TkRHSjdNeGZoYVBMNytKYTNSWjRIWTZj
WnFCCndNTXluRE5kVFA1bE1qdVJPT1FLR3JlSldyU0ZKQjhDMVN4c202RE8wdU45a3JEd0k5YUZ2
N3dNY3dBUkFRQUIKdEN4TllYUm9hV1YxSUZCdmFYSnBaWElnUEcxaGRHaHBaWFV1Y0c5cGNtbGxj
a0JzYVc1aGNtOHViM0puUG9rQwpWQVFUQVFvQVBnSWJBUVVMQ1FnSEFnWVZDZ2tJQ3dJRUZnSURB
UUllQVFJWGdCWWhCTC95a0p5Y0hWYVBXZE1yCmdGTjRveHpBN0FsWkJRSnE1UEY3QlFrVXkyZ1RB
QW9KRUZONG94ekE3QWxaY1ZNUC8yQUtaZ3hnTGZjakdhbGsKZGc0bEhpS3lLUU01a1ZiUG02RlVU
SGljM0lDaGkvVFVTS1ZXT1RyaVFYaGdpRzBFRXM2NThzT2lkU0VhZ2U0WgpjOGlLRkRJVW5hUFBv
VXZHKzc0K0puc3F3eUM3ci81d1l3Y3lXU0toMXhrVk5qbHNPYVdTSnlhK1gvdHNPWGJuCkQ0ZzNT
UXhhai9jNG41ZWlSWEhuN2svU1VKQVNGallJN3hQT3dmSzZOcGNwRXFhc25vYnVhOEp5TzF3MzV0
ZVMKa25JM3Zya2NmNDlMeUtpck5ZWWlDc2d5MG1YYlJuRUx2MTIvVUZ5THZISjdhZHZMM3BJaDd5
bGc0ZnVkUWpKYgozTG5HYWdFVlBJMW1rUjMzdVp6MUhqOElBb0o0cnU4cTJ5SDh3VWRacWt2V1gy
L2lXTDdVT1pPaW5weEwzeFpwCkpUZWh3ZG55Mk1ucTBUeVQ3b2UxYnpGem05Sm00S1NEUEdlTyt6
MjJpbklFZ09SdUJCcXJ1bE4wcmFMc1l1aGoKMlZ1TUJVQVZvalVXRzNEclBtNGNtemZpaThDTTNC
S2hJZ0R3L3orNFJnSE5nU2JJY0I2SnBLQUpVL1JLVGhVOQp2cEJMZ09PWGdjTDNrazVEVGVOSVZu
L2ZtcTN3cXlBVTg2VmlzcUpSUDMxNGJSSmM0WEFIbkxkV29sOU9vSldZCmI4ZjhzZ1N5bkxyZXpo
M3RsdENvV0Y5M0MvSWduYUltaktaYVQ3MldQRDNib2ZyWmZIY1JRN3lLbHRxNS9mY2oKUEd0YXB4
VmJDSHJoRWQrRGlqWmZKQmdmUm0xRUVrZmNqNm1ZYzdMRisxbXczdUJyWHcvb2NhNEQybkNITTNH
agpIbWtGcXFKNUxSLzBRcXFiOVFFa3BaSEhkVHJoaVFJekJCQUJDQUFkRmlFRUpOWW04bE8rbm9m
bXpsdjBqL1M0CjBuRm5WU2NGQWwrQ3lhVUFDZ2tRai9TNDBuRm5WU2RLV1JBQXEyVk5OVUhBVHZr
bHdvV0NqZy9wVUxWcTZ0MGEKWExRbDN4cUVIV0lQNVY1V3pTMjlaeDhmT0k0VG12Sm1aZ0ZpNy9Y
em1EL1Z4c2tSQkVvSjhRaDBCN3RKa01pSApkeVo4OFZGdElCcEdlUDhibTRyalN3amJBeUVpRnpn
TUV5VWlJdHNEUTRtZGZTa25ienl5OExXWjZFNWdCREYxCmFmaGIwSmZCbXVOa1VuanBQRFc2R3BE
RE9QOERHOGtIeURidnZlWngyVkF0bC9VS0QzaWN3bXBmSFBTYXRjMloKMnJKUWZWZG8rMHQ4OTFk
VmR6VUlIbHpHbUJyWng1SnNIelJ0YWVIancwaS9XelA5SGI5QnBzQTBXWGlRQlF5TwpYTmltVnVi
cFoyTG1nNklJbTFVM0lvRzljU3lWVkE3QjB2ZVNZR0wyaHNwNTZqOWpUWGtudk03dE5vVTN6SC9G
CnBHYWpmVUtMbkdsaWh4TzNCY3l3Y1RkcHhEUUlBY0NIMnlmejhDbnZzMWlMT0FBK2dCZjJTeVMw
aldiMHVndnkKc3NxWWIyNFNwTjNJL3VEZ1FDcGI4MHhzdVhPdGhJUjRFeHZEMlJTcnJkR0cvZE4w
ZG9vWmM1TUdQdW5JQ3NyLwo0a01CZHZhTDN4Tm83dnZQemdTRHFBSEh0S3dzS1RpSVZXVDZoT2kv
LzhpZU9aSTZoOWEyOGhxQ1pYNGhobllqClBWWEdCclJJNTFaY1F0WEg3Y0haRElXcWkyRFZvajcz
dVg2dVRpSXV0eEQyTjBTdEt0aUZmazJiNjBzSzRmRGYKMjFOQXk3TEt0WVgxU0V3VU5UZ0Y3dDVH
dWczeWtrMlZzQ0VLSzVYOHkzK2t3Y1Z1aE1GRGFCa2MxM01Ld2xLWgpIVlJwTjRjV1JBeU5Bb1c1
QVEwRVgzK1BSQUVJQU5pYzZsTEpCc0ZaSzk4ODZSeHVqeHpGdVcydWhQTTFDYmw5CjlqTldSUkhk
V1MxK2ZYOEJaTUN2Z21WbFhpcGJtb0xIbzlSTnBlRkFqVHpRTERhYkpHRnltVjAwSm04Y3E1UGkK
ci9YakZMV3g1MUlkdzNOOVVGSS82TTd6blE4MHIyQS9nWDIwYk84YmpLWjlhbWVLd2VnSjlXLys5
aXlXc3FybwppTVJKSXBrZUt3c3I5Sktodnpma3pQdzZDcThBL0FBWXlmS1RTaTk0NXJQQU9MUHFj
TlVBcStHMHRRSVlwVTFRCnF3TjBwQytRRW9aV3VCbEFTZGVHOVFCaVpLR3ZVVUhLYXJkTEdjOVp6
em9KN0w0ZW0xTjRpNU82Q0pxTURNbU8KTGNsZ3NJb0gzMEJmeWJZS1RpOWlraUZmZk1sbERTWDBk
NnhaUHZWcTcxTkZXS1ZFV1cwQUVRRUFBWWtDUEFRWQpBUW9BSmdJYkRCWWhCTC95a0p5Y0hWYVBX
ZE1yZ0ZONG94ekE3QWxaQlFKcTVQSElCUWtVeTJRRUFBb0pFRk40Cm94ekE3QWxaaXo4UC9qUGFJ
YWhvR2pqSStrY0pRbXRJSnJPMEppTnZZaWZ0T1ZGMmhKMHFrKzhoUms5TWE1aTQKVFhRekZERHNO
VkhVeEU3NS9adVlmS2hWSWt3SlgrSndzRnhPR1ZnVTNlZmMrYkFEMlZoMHVlZlRwSHhxZVBPdwpo
R1AzSDRaRVBPOFdMdkkzdFl4U3lpUGZaVURaQ01WQVptUFBJU0h0QXViNTBQQ0I4QkFvc1lSMVY5
eUdEclJBCnkxUXVzajN5REhWSlVCMzZYVnVkSDhJZkpVZUZBdkpReGdTNS8xbnhTQTNjVTFJY2dT
VHkvZFh3Sm9QL1hvSWIKTy9DV2ZmT05xWkRnNnBOMm02aVA0WEpwSnRoTDFRVGlCLzhzRllMMWpE
eFBmT0V5MFdidjllOENNOXFUMjBsRQorNFpia0ZqUDZlakVON015Uk80WjJxS0RoV0tEWGlWdlZ5
UVIrUWRjSU5UVDg3WnFUUE1WUGRBSE9WOVpFZ01KClk3T2ppcmdwRGdpaXN6QUdvNUhGcWduMG9O
bzNKeEx1bThIdXpzZ09oelpWWHI5b2hhM1F2NHBQSGlJQVE3MzcKMTRDR1BnS2h3WUhvVDJlSHMw
NHo4Rk95U0hvUWVaVExsNWk1Z3dZUHVRVkF3dlIwZjJXNlpiUEVqR0hCNm1xegpXdTdBQVpQMVlU
K2JDNzZ5S3h3b2N4UTEreVhaZU5Na1hQMnRlSFJDMUdaejNOaTdxUmJOR0pMcXpqN0V3aDdkCnpn
U1k4ZStkTCtEaEduTExZT0k4elRyUEFKc1B5aWVaVFhWUG5PR3JJcUdWWUlucURmU3c2cGJqUTNL
Q003NXQKemYzamJBd25WekYrWUlKVVRjOHJZekhRbmJHYzI3L2FHdGdOOVQzVytpdkdvNGlXaWFZ
d09wMEl1UUVOQkY5LwpqMkVCQ0FEQzEyOEpuck54bUxVaGVZRm85YncrbTNlMm1RQmEra2R6blRM
UmtWeGJnZFhCMEtObUpqbWI1b3RLCnk4TWhUSXdsUjFlWHU1eXJhV1huOXBxZ0M1REJPQXdFak4z
ZVRFNHdZdDhJTWlMc1JxM1YwcGpycy9KRmt1OXYKbHYwKytYby9UcTQzZXhEOTNSNVJNRURSa3h6
Nlg1MWZuVk1IUzg3RmIyZVRFanNxVkhyUUVpTVJ1VEY0SnkrUwoyN3RnK0FjQUZxYU5QUDZZRThP
SnozV2QydjQyYnNXckNNL29VTE5wVXdrdWNMQStVaXdIRWZaTktFL1dxa1ArCjBuK0Z0Vjg1ellE
NE9CZzNORkwzM2ZHTTFZd29IdE5ad0lYMFVTaGVpM0MwTW5HcnhCY2ZNaWpyNUpwZm9BWmIKQ0Nl
V0g3YkRzaDNORTQvUDNQczRNVXRMK1kyUkFCRUJBQUdKQTNJRUdBRUtBQ1lDR3dJV0lRUy84cENj
bkIxVwpqMW5USzRCVGVLTWN3T3dKV1FVQ2F1VHh5UVVKRk10ajV3RkF3SFFnQkJrQkNnQWRGaUVF
ZVRycFh2QndVa3JhCjFSWVdvNUZ4Rm53clY2RUZBbDkvajJFQUNna1FvNUZ4Rm53clY2R1h1Z2Yr
SklTbzZUQmYvVzRIWVB3S0drdHgKMmEyWkNQdjBSUVNwZlpYK3lwMSsvUjJ2cmVTS0JaSDJnQmgv
MjhFVVNTNXhsbFRhbDUyMHMveUpBbWJvUXczUApJQTBNMWM0OHRxZE1vc0RURGtKNVcwekYwSExU
SjlJaTNwSDhCeExOV3phdHNHZ1VLRkMvRTVSbzFEcXc3QWZECnF5RjdSbTl5WmVRRjdJVmlOWkFC
NXJzTnNPR3YxRGcxc3NKVkhQTGR2R1Y5Uyt5czRqU2lJQlNDMVh2bmNMTFcKNTF6dDJyU1MyWDhx
Ris0V0svaTJCK09NVDc4NXFTVjlMS29pUW51b2ZUS29CMWxjWkQ0SUl5YW5ELzRvZTJIago2YkJU
SDBicmkzVWdtb05vMWF2MkNtRVFOUkw4UjNXV1JkQ1NyU1FpVEFNSWRFTmh1TXZ6UlplNUxXSUVH
UHJXCmNna1FVM2lqSE1Ec0NWaytUQS8rTFV2WVovU285RitkZzNvYnFSYm1Jek9WNnlmTTd0VGdM
bFNVNE1ScUY3bVUKWVhhZUlFaElWVFpVUzducFd6dWdmREF4Q1JCQzRSZnZRT3Q1OTlQQ0d4SENy
MnBuTVNjWkg0dFdlS1VjcnZIOQpyelBVNzdCbFQrb0RRQklGR2Y3c28xM2FFODJicTZGc3RVWlR6
N0l3eXhLWGVSTlFmTWN0eUU1cEVnMDRpOFRlCjBlZHdWZFpaUXB1SUhBK3NuM0ZMNWp3WGpNZitG
RDFKT1puQ0l4dTd3OGZxdG0vb2tXMDQzWWk0S3pMMnVvSUYKVGg5dm1RRjhLekNkR0h2OEpZSDZ2
cCtLRWpZZzdnMzZaVzhQTFVXcnAzQVhDZmhxRmRUQTRpY01EbnQzV3NkVApMMmdKY0RTWHI3MGFw
VTZrUjVCaTkwalFBWVgvait5d2pvWWlRN29aVkhUTFZoMm5XdVl4RXJDTHlvL2NZdlVMCkQzMnVs
REpxWjduUUUvaUZqVGh2YWJjaXhpcDY3eTNOejROU1NSL0M2WUpyNlJ3cXgrYnpJS2J5eVFzc2VX
UC8KR0tnNFNOSGlEYnAxWTA2aEJ6d2d6Ri81R3pZT3E0cU5TYXBBTUhUZmN4TkQrenlTSndOaXVX
ME5iSVFubnNPYgpLRTQyV1lxalJ2ZkJ0VU56N1Q2L3dyNUs4anp6OEhyY20reTFscnE0aFB4TnRX
WWY5d2E0OE1qZnlDSWg2RXFYCks0aXJCWXJzSEI5UUhBQVhoV2oxZU9lNFN4eU5BWHlUbmpXNWJD
WGRqMWl0Z2c5Z0FxTjF2dlg1U1RadTFvdWYKYXArRVRVQWFwTnFMdTQ1OFRaWUFqTU1sZWM4VU4r
d1U4T1REeWhybkg1ektQN2ZyY3FXR1luVDQvTU9CZlF1NQpBUTBFWDMrUHJBRUlBSlFoRDZqMWJO
cm55VXdDNnNHYVYwbXF1cElGcnl4TFhTdWQzeUdEZy9acHlLdGY2Q2RMCnRONm1zREdzWFVHMVFB
WHpEQmhUeGJNeDJOSllzekk1RXdXTXFybjlCb3BZc2xiSG5Zd0kxNGpXZnArbDFVOVAKZ05UVVBE
K3FDVXJpQmhOdWJmcEpCMkdMaXBtdzY2c1p0aFFCWkdleEJQUE5ESTl3NnVKaytLSzZWeEhnc0VT
QQpsU3VxdjZjSFcrU291WkhzcmZhb1QrT1M5eGNCNXN4Sm1tQTNsM2dGSEJ3U3hFU1pIYklqTC83
aUVBbmlaTlBZCmdmbzVIUHhaQWNKUkUrRmxWZVJ4bWI2RU5BekcrK0lteEM5bkV1OWJ6cXp0MGJm
R2c5c0loVllVcXhvT2FtcFEKVi8xTHE4aEJPb3dFR2xMWTNtaU8vR2c3OEdPUTk4Z2FISkVBRVFF
QUFZa0NQQVFZQVFvQUpnSWJJQlloQkwveQprSnljSFZhUFdkTXJnRk40b3h6QTdBbFpCUUpxNVBI
SkJRa1V5Mk9jQUFvSkVGTjRveHpBN0FsWmxLa1AvMHRMCkhvaWcvS1NNMVY5cVljNGI5L2hqclhx
WmRSeWowUXlMVm9sVUxkK3RhazEwSm1HVE0zVG1Pd3oxQVFzUGx2elAKSUVOTzZyeXVTWHZxWFJI
aU40UklyenBwSzJUd3o4a1hkOFNvTThCUVJLeWF3OW4zdEphVHBQNjFacHArTWloNApXNW1OV3ZZ
Vkc2T3p1TnBTWWF5UlJiU1FzREpEbkllREIvMlVuUGRZRTJiY25vdjNDKzRzYUo1NUdaRFgwYndQ
CmtMM2JNR3lOdGFMZzFLREdVQk11L3l4VkROclJ2emNJY1hHQlhaOHJRRmlINXpqVmpzbWNOeUJP
UEFaK3Z4V3AKYWk0Z3NMZzBVc0x2N1NZb2J6Z1pLWlpkM3RhZEM5d2gvTTZzdjVKRW1ya2Q4OTVx
SjJPVnNJbmhUVXFnVFJvcwphenVZOFdURllyZVg4MldnU3hiWXZPZFFabWI1MThtZzNUYm5hWHJB
MkU2cS94WHBhM01JZ0lsUlloMytrbVp4CjRtVEhodVU5NEZvM0NGU2lPMDdqVHcxSTRETlhsN2RG
TU1rbGk4eGxTNk1yZnVpRDFxVVNPTzd0V3ZiNG0yN28KTFZmU2ovMUZWUDZmLzBjWUkwSWw0Y09Z
c0JQcFVTMDFrYS9QOUl6Z1BZWWNIWTR3QmVKajR6OFI4dTUxaHdjMQpFbTlxcUZ2d1VYM0hGb20v
WDVPNTc3akM1L202elE0RXI2Y3VYbDdFV3NKZ2puY0hnMUhQcURDMnVacXRIOW5CCjMwVHRiN2FJ
MjA4algvMjlHeUFmak5UM1FkNjF2UlJnUFFVMkhDb2syMklRWUNRaGFFOHI4QW5HbmY1L0JVN2cK
SE9rbHhPUGF1RERrbTJmMnZ3T3I3Vm03ZEowYVZmOW0wZ3RxMXRxUQo9NlFnVQotLS0tLUVORCBQ
R1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCg==
--00000000000092689a065f14f629--
