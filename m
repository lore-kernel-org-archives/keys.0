Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7371DFE2D
	for <keys@linux.kernel.org>; Wed,  4 Sep 2024 18:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725473241; cv=none; b=tIXVLUwEGFTRFjsEO43p06wOnP1EBqoyDjRog28JYwboouX/Z50BvdvOd2aIBBv5O6WL691GykqZqOA9GNqgUXLq9U/7DAdAUMY8jGsbBskerrmrQh9/rMWKWV3QqTrFe/uUoc32EIZc2nlWR9+ls8/elQFQRolv1GTeet2la3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725473241; c=relaxed/simple;
	bh=gPKXY6F/s73eBlI4g+6kZfWoUw495N2Vb6gBxMX2J/Q=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=sjzc+F5AUAZoVl81+mOHURhxOK8IX1tU/md3cmBOyPMKBCmxFHqaQJBvHYW/RJ4W6Xw1jWp/K6aT76dGeHR/g+mjOP3JMAJTXwl3S+kfWPB7uOswpCxfswDwX7pmWVkkIOFr/n12P8ZuQWDOxiypBZduSnE7i9B5HdBgejMqHsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b=TQvN9FHx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux-foundation.org header.i=@linux-foundation.org header.b="TQvN9FHx"
Received: by smtp.kernel.org (Postfix)
	id 6C259C4CEC5; Wed,  4 Sep 2024 18:07:21 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id DB7EDC4CEC2
	for <keys@kernel.org>; Wed,  4 Sep 2024 18:07:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.kernel.org DB7EDC4CEC2
Authentication-Results: smtp.kernel.org; dmarc=none (p=none dis=none) header.from=linux-foundation.org
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=linuxfoundation.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-533463f6b16so1520434e87.1
        for <keys@kernel.org>; Wed, 04 Sep 2024 11:07:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google; t=1725473237; x=1726078037; darn=kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Ey4d/3ApfXjfoNQ2tafwt8/0wkCz2mpYqbMr7OW73SQ=;
        b=TQvN9FHxhxaKu1qTgJipmDlnA4zdZVtf2aRmYOJWp9Fi0hhy3LOZYzCqEr+uN9JB1a
         +3XMWPf5ahhJX7h1DPAtiKuWkP87ZZr+b4Gl0fuNEDIuevJ0UABFgqnMTS+2SHJVVo01
         3khbi3+CmNcbaVV1WmE5Ew4qtf0lDidZjDG0s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725473237; x=1726078037;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ey4d/3ApfXjfoNQ2tafwt8/0wkCz2mpYqbMr7OW73SQ=;
        b=YGyUo7V2mXK6X6YcBjSvqF/rV0oX8fOi/+yjoTXAGOppn59P1Dp5Zqpy9dpTv12Nk/
         qJh1+5bJivwclkOwSYDaSDe1WMdtaTHumJEPy65BtioNKCZZ3x4uh9I/RmDFxxE4Imuo
         ZCfpmqu2tqVhVyHhErX0KPJDSvGtesZivQ7BT1rWtW1kYcT41f43snZaso8LY+jYB5D0
         ZN6V8W23OlFh60oPR+tEuK3Q0NuApyxyomQi+LxbzomReE3kdG6P3BIkxr+iD47MsJcO
         nDMthwkQBdAhOloIwE0EjAazvOSHHAO3LzuPf1vpur7ftIHBavPcsR2T5zk2ECAwE5Ln
         U0Lw==
X-Gm-Message-State: AOJu0YwAV3njyoq8KkqeXAy6kH3Qz014UaIA/iWM9HGNjrvO4qeG/qCX
	Eqjt0U0x9V8SU1ne9MSY9E38o+IhxT2UQCMCFDYi1ljV/0RAzUvLBVkbNfe6Xx/6T6P7fxVOlXO
	jzbLyTg==
X-Google-Smtp-Source: AGHT+IHlUQDIKs6b947zwrkUxlcoUQgfH0ZTJM5O4kgCVlbne9RcCBxD8X1B+UJgmSrSpmAvxKcS6A==
X-Received: by 2002:a05:6512:1047:b0:52f:c833:861a with SMTP id 2adb3069b0e04-53565f54f84mr2758472e87.51.1725473236765;
        Wed, 04 Sep 2024 11:07:16 -0700 (PDT)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com. [209.85.208.176])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5354084edc5sm2409032e87.279.2024.09.04.11.07.14
        for <keys@kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2024 11:07:14 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2f3e9fb6ee9so12950471fa.3
        for <keys@kernel.org>; Wed, 04 Sep 2024 11:07:14 -0700 (PDT)
X-Received: by 2002:a2e:be1b:0:b0:2f6:62a1:25fe with SMTP id
 38308e7fff4ca-2f662a126f4mr7001131fa.23.1725473233398; Wed, 04 Sep 2024
 11:07:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 4 Sep 2024 11:06:56 -0700
X-Gmail-Original-Message-ID: <CAHk-=wh5BSmtG3jGv_75e4RkSE3-4Ywp9eycFqsJNpv+3TTzRA@mail.gmail.com>
Message-ID: <CAHk-=wh5BSmtG3jGv_75e4RkSE3-4Ywp9eycFqsJNpv+3TTzRA@mail.gmail.com>
Subject: Second yubikey ..
To: keys@kernel.org
Content-Type: multipart/mixed; boundary="0000000000002653ac06214f0b20"

--0000000000002653ac06214f0b20
Content-Type: text/plain; charset="UTF-8"

Here's the public key that I use for my backup ("laptop") yubikey.

                  Linus

--0000000000002653ac06214f0b20
Content-Type: text/plain; charset="US-ASCII"; name="signed.asc"
Content-Disposition: attachment; filename="signed.asc"
Content-Transfer-Encoding: base64
Content-ID: <f_m0o670ex0>
X-Attachment-Id: f_m0o670ex0

LS0tLS1CRUdJTiBQR1AgU0lHTkVEIE1FU1NBR0UtLS0tLQpIYXNoOiBTSEEyNTYKCnNrLXNzaC1l
ZDI1NTE5QG9wZW5zc2guY29tIEFBQUFHbk5yTFhOemFDMWxaREkxTlRFNVFHOXdaVzV6YzJndVky
OXRBQUFBSUZicUJYQ09nQnFwVTBNajB2dXV6Y0hIVGQ5QkZTeDNlN2dTQzg2Rk9rUHlBQUFBQkhO
emFEbz0gTGFwdG9wIFl1YmlrZXkKLS0tLS1CRUdJTiBQR1AgU0lHTkFUVVJFLS0tLS0KCmlRRXpC
QUVCQ0FBZEZpRUVxNjhSeGxvcGNMRXdxK1BFZWI0K1F3QkJHSVlGQW1iWW9TUUFDZ2tRZWI0K1F3
QkIKR0ladmdnZi9iN1hZUFJGMHlQbHFPM0dHOHRITy8xbHlFYTIwT2hEdU95MWZKKzVtK2MzQ29o
TEpKczdHN3ZvRgpPeVdCa2ZyY0lJdU1KTVNFbUZiU3BWNUtFYkppaDc1d3ptcGs2QytpTzZDL0dl
bllFcllORnMwdVJ4ZU1VNmJHClgxbHhVSzhXWko1OXpuWTdrd0ZRVUpvZU9kdEhXMUs4YWJLV2U5
QklxVysxRFFTbjVqVWV0OUtMOE1nWFcvdUUKUG1jZTNZZEFOeENvVU5YNVdzQnVnT0Y5V01GNE1X
ZjVOODYyaS9tZVlPYTVZMzBCSHdrd0RsZkh1S2hrakVwcgo4bDJ6UHd1c3hUT25NdW9XbXoyS2Nh
bkd5SStzODJWcG41UUtSMFJyNkErZzAreVQzcElxUkxPbUtPTU85djZ1ClpHSFpsTWt4QW5wV1dY
ZUEwSlQzVGVVM0E2ZHJXQT09Cj1KOXRsCi0tLS0tRU5EIFBHUCBTSUdOQVRVUkUtLS0tLQo=
--0000000000002653ac06214f0b20--
