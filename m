Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C14156F45
	for <keys@linux.kernel.org>; Sun, 24 May 2026 11:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779622550; cv=none; b=u6ZT5t2giahTR/ikpJxLRzWN1C0X7maRnCNe3Ox6fER5hMR/4/PA38+79XdeTy3VA0WVuqBNk4E1S1rmgyXwqfF/sabdo29Pdjzt1wxwhWp+oUdsWV2WGy52Alb7SiH1ag5P47KZfDvw20Dp7yg2mSSpbeyJN5+TjTcZJHtgO0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779622550; c=relaxed/simple;
	bh=oNQvbxGY4y9qoi2cgAYhoDr0VHo6cJvi4YNy4Qb2d2A=;
	h=From:Date:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=s/UvmEKGUj7M1lIa/53KKXAvQpkf9gzoAsQWl3h2ezwqgPZzyKEFWgodUUZJLKU11y5eDh5O13jEPC+bE2aLZ7s9aT0vrTtoOxslY8Nom/QTfoBRFfsAoZy3y8EIVd1M5Ypo27KM3vJMCIgMGHwk7eSCA8cAP79db75pJjEMJDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U8nZuTHD; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U8nZuTHD"
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5aa2691db86so7410607e87.3
        for <keys@linux.kernel.org>; Sun, 24 May 2026 04:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779622547; x=1780227347; darn=linux.kernel.org;
        h=content-disposition:mime-version:message-id:subject:to:date:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oNQvbxGY4y9qoi2cgAYhoDr0VHo6cJvi4YNy4Qb2d2A=;
        b=U8nZuTHDCXnYSiSvDMtxpHrb0QgZ+B2qvRhOXslS1BIa/AiKj8cdD+Zam478fn4+Zu
         ey9estEe8C2jhT/vfWpuxl3Y6Ad1ahQ7wRADxxe5EDxHTiV0yv+S+R65Dp1LYlIkMY8e
         nlsZ+8F4dX4P/uNkEDHoerZJs9yUGtJx8aVymazpzvIm1ekUgZajfJTiPEFXU20vWTGJ
         9+KuSH1LXx1D3j4xAHIO6dYZWr26rEqimuDmvfc8+TQboAR5xZiXkhzGPEzA8sS9RBAp
         POELaE5oHg913PWcHeyxW4iPuHeMYnMPyG4e/4l+Km8gUfy02HIBFpYjyt5myPUctuUd
         +tyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779622547; x=1780227347;
        h=content-disposition:mime-version:message-id:subject:to:date:from
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oNQvbxGY4y9qoi2cgAYhoDr0VHo6cJvi4YNy4Qb2d2A=;
        b=qcmSti0lQE3ZFYqQSuPPlOzXFcA0WayBiaEq8MPBZaAQzGYgCY8IEcwfivBOa5F9Do
         s4+TB+2Vlxb4ATQoAe/R4k1lzqW1bEsbkU/6iOkOHsEB84lqk4OZE/0ccOie7xjYx8S1
         k7Gl8LIcv3Z+4dZRlMA44xA4x36c6ePiGI0Z+erJKxYy0rHk75hCYLSV/qStj7iPCuPK
         AhXfLdJ0QTQcK6eI9JIrk92+45ML9bWs+ZVLr96j1sZ1QyNz2sHn47AjcL3uepLFKZly
         CQTHnqFLB421rgLqpLED76cOtwTy4R+uVX0bJCswzZaI8EP2o0vJAUNBKfU66eulcTew
         da3A==
X-Gm-Message-State: AOJu0Yy0ldAcct61/Yktqgl6znkRi5K2INxER7aqnRbzuiuQ3usH1a+S
	LpYFJK2CQL05jZNr3a6hKRR4YD4wVqPD+aeTTQOXTRBi6fMhiX0ilqVJDsMjwP+o
X-Gm-Gg: Acq92OEPzUR4fnjpQlfMiAgG/SI6haWB8BvwoVoQl0xCWY5EAN7P+qNNULMO4nkWvSn
	96ZbyzTq9OUXN/ehLfhH28NlIW2Znx6Bbsaz3x6KBDaksYATn2DGoyukW7p7UCCTDkZNCffRvrm
	0Txj0CE3Frfk/tBCz6C/oPOeDNTS1duuzBU4wAWMGXCLl9rUYbpKCPS4YIa87DbGDwFM44JEERI
	tt82g7X2k1nmDU9teWGpINKEqIE9P1/j1Kd+EVjXIgVeCyPvJRaAxQNVWKwmzShbbAM5o26cSIL
	DPxYCNNPr8Vcf7RfG3KwsUeQAcmc9mtyNcOPMrH5mnOCHyWMhk64ol6j5vrAe3WDOZy2Xo2DmGZ
	G3IFb04aD39p9bho5/lOsg14/TRKP9ZwK/xXQncgn0Jhg8IT2Fzignq7PMamakIMB
X-Received: by 2002:ac2:4a7c:0:b0:5a8:6b96:9d10 with SMTP id 2adb3069b0e04-5aa323bbffbmr2332575e87.40.1779622546786;
        Sun, 24 May 2026 04:35:46 -0700 (PDT)
Received: from milan ([2001:9b1:d5a0:a500::24b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa32cf2b22sm1872083e87.55.2026.05.24.04.35.45
        for <keys@linux.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 May 2026 04:35:45 -0700 (PDT)
From: Uladzislau Rezki <urezki@gmail.com>
X-Google-Original-From: Uladzislau Rezki <urezki@milan>
Date: Sun, 24 May 2026 13:35:44 +0200
To: keys@linux.kernel.org
Subject: Updated GPG key expiry
Message-ID: <ahLikIv0p6-cYdIB@milan>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="mgxMDILY68sfDjp1"
Content-Disposition: inline


--mgxMDILY68sfDjp1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello!

I have update the expiry date for my GPG key:

BBA4117BF980518367E54D0F058AA48E72962CCF

The updated public key is attached.

--
Uladzislau Rezki

--mgxMDILY68sfDjp1
Content-Type: application/pgp-keys
Content-Disposition: attachment; filename="urezki-gpg-key.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
d4QnUX88sg==
=Mj2H
-----END PGP PUBLIC KEY BLOCK-----

--mgxMDILY68sfDjp1--
