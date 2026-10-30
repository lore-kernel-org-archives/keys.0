Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
ARC-Seal: i=3; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793389262;
	b=HonUdYdmSALMfe2Hi/MPsvd5/sMFsI/1AjihSrLcuTYR/Nz1kNcd0TPV5ja8cMGvVo7j
	 4pHadW3cYeai0q9CiHtJ6i3z/CzGNFaqhhDEFcIr8wp7ja6VQiJ+ZXzhN5UM5+vjc0UUB
	 OOzDAt2OVF7k58Kkg2NVitUa0iTDJ+bzyiXx5HHYXtn5aGxZKOZDcysC0u0lAk45z2l7U
	 ioJa3xw3Ww6bLsqyGkzUbOFJEz4ICn8LDveJF0HkCL/HukdN26tFcy0HGQc4XInDrjZo2
	 xSVf+9T065r6O76fjv0z/7qvgnhmXRNhdloLgSEJxvXL2gF7m8j67Y9dJdGS+wZNiCQ==
ARC-Message-Signature: i=3; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793389262;
	h=Received:Delivered-To:Received:DMARC-Filter:Received:DKIM-Signature:
	 X-Google-DKIM-Signature:X-Gm-Message-State:X-Gm-Gg:X-Received:
	 MIME-Version:References:In-Reply-To:From:Date:X-Gm-Features:
	 Message-ID:Subject:To:Content-Type;
	bh=4N49XwDzdx2pu9QCQEko3t/9WmcAvvaXMwvcz/bgPe8=;
	b=ZQfSHvFRim6mgF3jx7UmYJ3KtHCL2c64pYGX7yGgTkuCv7IGX9wAXJrZdtjg1tuLRCzH
	 6vKDoSe/1aIAxlnqcFee0rEpwVLI/j81ShRHWKz/E1UWm4IwwOJ+6palGiPPyV+o/YuOS
	 aAsai3LVdCKBh7kLMjL4OfJhgUsH1DkPgg3TTBOcHfXCtCUxLv231UEJysQIO+yTUiJ27
	 HFjnFqVyzHLoC5xZUMatrPWLmX/u8GedCbD6bu3uz/GWvQihmZ4xW5SpiQbcIlCcuH2gV
	 skUxF39rw2VifDb24wKKjJ6gkmNCjkE1XK6qobyzieGCRbsuL3P1rb3mAjuhAWomaFA==
ARC-Authentication-Results: i=3; smtp.subspace.kernel.org; 
	dkim=pass header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=SxDtcOhx;
	arc=pass header.oldest-pass=0 smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49633606A31D
	for <keys@linux.kernel.org>; Fri, 30 Oct 2026 19:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=SxDtcOhx
Received: by smtp.kernel.org (Postfix)
	id ED4391F0093A; Fri, 30 Oct 2026 19:41:01 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.128.179
ARC-Seal: i=2; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=pass;
	t=1793389261;
	b=Z2X5mbML5jZRWHPvul1MLaT/VQxch/koY7LD2wK4qjKny3NKNuxXdzDbIm6kAUmuqDJf
	 VN3I//tjjuSAU0fbpovenvWgiP6z/eQA+b/Z68IwJWjB/yn91Wv1tGUyC+4hjyOtmPRyg
	 pY5nORulOY1mvBgOyS5Zd1QxO6heV6/fYpz9LXtF/hXL/I2RhWM7BLprDelajd2b5IBm2
	 dKV4u0BQ3XdU7rPTY9RJZzka5KS3jMuMqjXwA6SHAjkQjjFmkFwbmfFtr+BDDoVfnMmzw
	 7V1WMnOcxcCWwZN7xxsiNlGgJasYfZWsl04cmnjiBrlzb6GPHJ6KKEj/4YVpOq05Kgg==
ARC-Message-Signature: i=2; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793389261;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:MIME-Version:References:
	 In-Reply-To:From:Date:X-Gm-Features:Message-ID:Subject:To:
	 Content-Type;
	bh=4N49XwDzdx2pu9QCQEko3t/9WmcAvvaXMwvcz/bgPe8=;
	b=zARvbve/hO7loOz6pt8rWUpoEcM1EEF0hvN3On1trQlQ/i1PXLBr31YJs4YHmkgrFmih
	 ECsf0bv/Ch+xHGnKSxIBUJgXs96dCOTY3Qx0zMUxmBZPnys8PDtc964UmzDfIo4qtvz+s
	 WDCJohJ1ynNc1r2SYYa2nTkxjMw07O1xzMVYIRWvoctB/GKv1D97uS5GgxVMoR7/TTN1w
	 dNK0ldToz9E2NmGX/i+uIRGLmhQ2AUfylCe/7EfSAAI01ms/H9R+sqTBhXzxw/yRZEEa9
	 6ZSQoQSmdTiMfRIW+wpa1CmM6ejaRlXxr2YzKzDvie2yvzWBFnVDS3/DAAbA8UGr4LA==
ARC-Authentication-Results: i=2; smtp.kernel.org; 
	dkim=pass header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=SxDtcOhx;
	dmarc=pass header.from=linaro.org;
	spf=pass smtp.mailfrom=linaro.org;
	arc=pass header.oldest-pass=0 smtp.remote-ip=209.85.128.179
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 4D7B81F000C1
	for <keys@kernel.org>; Fri, 30 Oct 2026 19:41:01 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256 header.s=google header.b=SxDtcOhx
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.kernel.org 4D7B81F000C1
Authentication-Results: smtp.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-8b0f59a5fdaso10387457b3.3
        for <keys@kernel.org>; Fri, 30 Oct 2026 12:41:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793389260; cv=none;
        d=google.com; s=arc-20260327;
        b=XQBCqi+4umJ2A806l/3pyCcUyQ7TdsMIRegwsJrRCGNC1x/JLOeSrj9/JK/QQwfXdc
         /SKRCv55VKiMPq9fyJ12vpKjSZEoS1IJvz8cDxuiLBQhZnaHmFuuySmWC0Mpz03E1S8W
         l2GvRogiRhM94sQz+ofkBplq8PwjtjTHTbtYZ5Kzox2eZD0PAdWxyA+zs1LBV1sbx3l5
         S7WSowdu7NgpjMKFcd6k7WEntA23NJLCeRMEGk/Wd2vYioFZL4Y5UlzH1i2K3LEktVIS
         rzq4L6d33IMtRrznCP9ycKPRu+6SGdIs1cUc7lduJMNKRozaqHAZRQa2LRMaU7+Tu76B
         +Ivg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=4N49XwDzdx2pu9QCQEko3t/9WmcAvvaXMwvcz/bgPe8=;
        fh=LkuBisc3OYnYPLqThiMxf3fIw9DEJqE8HuRp5MrQ5z0=;
        b=Nh7hiZBzlTOYV69OyqirN/dRO3bDVajT0ieacAnp/hBo/h5dKnzFfNSlvNMhGIJ+lJ
         dKfwKjYAmQ8bAUCpoxp6/ECu6oVCAfdpZyT8c4ACfSia47mvomnmGpuAkgJo3Jw7wV49
         4oCuHk7PNJVTVm1pzWkEXX+oCkHBjdPWNvMmUSHOu78Fs6m5vmD9NEgl42se8VDvJ3qb
         vRavOwcPU8U248BJ3F5hcK/XBNLlUuNySMzUBw28mUP+dO/UGhe7ALuAO5/JtHKW7xty
         NoxUjdNpfI5xNqWZuxozPrM6yQmC6b6q2GWGIiRnTp9/uCaw3gkGWcIqzd3AquwghCmJ
         Szzw==;
        darn=kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1793389260; x=1793994060; darn=kernel.org;
        h=content-type:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4N49XwDzdx2pu9QCQEko3t/9WmcAvvaXMwvcz/bgPe8=;
        b=SxDtcOhxOmpf6hDX6m8mKWkovKhg97gZ12gwBfw8WRPt+az5fjJaTkAolCZegkr3At
         tnrBNN+6zrRoeqbs9ZirAzHXT5nnxZEBSBBYAIgGDAWOpclEKc+mpRpmylqXOCt9A/aD
         1euiRYBFrTEmsqsFVBe+csy6R2OI9+tnF2fvhnU51iNNWFA5BDb7mdgJEtt6wTHP9r8V
         RoN3kh0OaiRLQbq+O1fgQxzgNlCkZctNeDJL64NiLaWV2WpMPzsumt578stv3fXB5dvg
         QYoQH0FkV1Xh8ZRXFstsEJRwFG/zzlCAkNG3WLwWw4fpaGaRV2LkuD7ZNcbMC9c9QxuW
         CPZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793389260; x=1793994060;
        h=content-type:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4N49XwDzdx2pu9QCQEko3t/9WmcAvvaXMwvcz/bgPe8=;
        b=NgZz2yzAU3X7eRV53Iug+TLpf9Ox5uRYRAI9juOPe6ao+MwrGPRRKbjdoZT0cQDQFD
         8ZmIm3dL0XDipQ9z360Fi51tdWGxTQux9CjQGtABHUaKw9uf9SB+pl8LuHAxNNR5Xlg9
         9vdOgKZ7rkSVCij4A+h3wZr0lErz4uhNOUtsjz2kuy2F6ZtL3RdofRljW9UCIljheDKT
         HdQjs9AcdyaPFQ1Vxv/V1b6b8SQqSWBsV44BLXFC+Uoy1mws3n2Cz5JmKEd87aTy6ESw
         RXPbjpWpOVmGzBEitndbakj+FCSc1m0ubmB/Bq1NNTaYfqOkyZeD2YVkA7ZQthOXc+Ls
         H+GQ==
X-Gm-Message-State: AFq9FYIEr2E1jY8OUPCLP+/MBRp8ikCm8/kLg5g+mgDi76IWjjVfYE1m
	65INdgoF0SQXXQT1v1IkIr0nDZ2k35KIB6vqndL60H6NiM2qjto6LborcUzaaOR65Wr+P0TYbWw
	AEYaBN8UR8xMZ7+YiM1KW+fo0dLzKlYXcrJAXtr0BRstCzxBbmEdk
X-Gm-Gg: AYBFou1SuiUUtx/wXLZcdV7QHBMcfAmvPu9egWQeQTrLfDTcNM5tNa9NUiLl1o8Knqt
	o367IghdLKFJDj6h+exbvPJL+pkShWJc+QyDcSQinsGdyWY80YQPdSXvJmxURUwyZUeu7xULEe7
	mopq8BPdFXmXoV6C7vkKNYGbW8PHSGWPN2geb3TAfbK6zNFdawRClAOJo0EflVO5riY1QvLnlol
	KJX9oLJOX2ysBcuNhWavWTLxTC3crV4RrNSiw1JDkyPkxiKVOz5vWJ/kruXcvWulpOFeUtmWQoF
	7ERPMQgwaXXSVhZMpORtoMJFjzwlmfetpHOBPWA9p66thG5AoeKZv3GvLsEdCCgUpQl5x/j/cLj
	N4d9X53kH4GGjp9tCq/a0N4qPxeElVZ/wDR7VP68Rx6Hs0IGA92aaQfTAlsKBADUC9MK6WQ==
X-Received: by 2002:a05:690c:d91:b0:8b0:cee8:53cf with SMTP id
 00721157ae682-8b2b6597d49mr22473727b3.3.1793389260069; Fri, 30 Oct 2026
 12:41:00 -0700 (PDT)
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
References: <20261028-augmented-messy-prawn-9c4aad@vache>
In-Reply-To: <20261028-augmented-messy-prawn-9c4aad@vache>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Fri, 30 Oct 2026 13:40:49 -0600
X-Gm-Features: AclHuK-64lTAWiy8OSSJUxokzjHfX9Fw-fhyOQeah9QFJGBR54Ce6Kpxd8W_Fdk
Message-ID: <CANLsYkz0+q+erQrH3Rumst0+E5L2ZS8ooe-VRfdYZed1aZ=Q-w@mail.gmail.com>
Subject: Fwd: Your kernel.org PGP key has expired
To: keys@kernel.org
Content-Type: text/plain; charset="UTF-8"

Please find my updated PGP key attached.

Thanks,
Mathieu

---------- Forwarded message ---------
From: Konstantin Ryabitsev <mricon@kernel.org>
Date: Wed, 28 Oct 2026 at 15:35
Subject: Your kernel.org PGP key has expired
To: Mathieu Poirier <mjp@kernel.org>


Hello, Mathieu:

The PGP key for your kernel.org account "mjp" expired on 2022-10-08:

    BFF2 909C 9C1D 568F 59D3 2B80 5378 A31C C0EC 0959

Our new policy is that all active kernel.org accounts must have a valid
PGP key to keep ssh access, so please extend its expiration date
(steps: https://korg.docs.kernel.org/pgpkeys.html#extend-expiration):

    gpg --quick-set-expire BFF2909C9C1D568F59D32B805378A31CC0EC0959 5y
    gpg --quick-set-expire BFF2909C9C1D568F59D32B805378A31CC0EC0959 5y \
        F64A8D9D6ADEBAE912A52057EA817E00931B7098 \
        793AE95EF070524ADAD51616A39171167C2B57A1 \
        6D62C2446394C5063691A4B4041351FA083AC043

Then send the updated key to keys@kernel.org (a publicly archived list):

    gpg --armor --export BFF2909C9C1D568F59D32B805378A31CC0EC0959 >
5378A31CC0EC0959.asc

Thanks,
-K
