Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE5379C0
	for <keys@linux.kernel.org>; Wed, 30 Nov 2022 19:44:29 +0000 (UTC)
Received: by mail-qt1-f182.google.com with SMTP id h16so11912715qtu.2
        for <keys@linux.kernel.org>; Wed, 30 Nov 2022 11:44:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YtoLbJ86DtiAHPRPzV2kUHnp3fLXKXPHdNeIVusggNQ=;
        b=Yhyn1+IqcgjLD2vUoubmApnp9UDb2bzVbh4QVfEMJgtMfeYKXru1/f05XsboQAlfcm
         DU7aDiUiLGzTD9ahoac8KYPqcM0uXf5TJLIpdKSn2cX2BmVr49/R3jVbdcKaVsU/DXD2
         1tAfUCtaP5fKAfjW+WvhQZGsRfwsrC8ToiYwA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YtoLbJ86DtiAHPRPzV2kUHnp3fLXKXPHdNeIVusggNQ=;
        b=n9Lht6IdJ96qGEjgG9v86ExqxmZ4a8OXm0OqRRTgcBLzLptfDUm27rc6p1aFHt7Fvp
         8gnt734R5Lb6H1QA+czlPS8ZYj6DjmMcO63oBP1NPy4OBHqsMoNbEV1HRqhyuXDQsLLt
         4PIHixD9JP+pSS8e/M7HjEhPR26K9NRFVKRW6Y7BpU3l+F0cwPpHHKMxXeIW/8V3XB7x
         Qcv3R6psk91DCPoQt8qpghtJ/PXHKEsF/Yb+Xu5U5YjKFU0uCHVJ4DJWF3d1JkSnB1b3
         jSMxb3B4HjPzF1a5o5yJhBZcAOTGpASE0gsDA9wODDJ5P880Kf7NAgjMJKadu1sQo1Ag
         YqqA==
X-Gm-Message-State: ANoB5pk0xb4TU8as0pPLwQGOQdjVxx310Pk32HjIbnS969hDRApbisPT
	s3jbnysD8Ij4iVgoHiL+88+9bSwFiNsxWA==
X-Google-Smtp-Source: AA0mqf4RAWldg1a2KnlxqQicnp/niCFi4gk46qQRw8Rk0/DKRJUIeSwbG0DUd/5edOx+dJX975x7pw==
X-Received: by 2002:ac8:73d7:0:b0:3a5:c8c6:a886 with SMTP id v23-20020ac873d7000000b003a5c8c6a886mr43146010qtp.455.1669837468717;
        Wed, 30 Nov 2022 11:44:28 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-33-142-113-79-147.dsl.bell.ca. [142.113.79.147])
        by smtp.gmail.com with ESMTPSA id x13-20020ac86b4d000000b0035badb499c7sm1329951qts.21.2022.11.30.11.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 11:44:28 -0800 (PST)
Date: Wed, 30 Nov 2022 14:44:26 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Borislav Petkov <bp@alien8.de>
Cc: keys@linux.kernel.org
Subject: Re: Update Borislav Petkov's UIDs
Message-ID: <20221130194426.v6hdygnqk3pkqc76@meerkat.local>
References: <Y4elvsUuvYHQGYK2@zn.tnic>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Y4elvsUuvYHQGYK2@zn.tnic>

On Wed, Nov 30, 2022 at 07:49:34PM +0100, Borislav Petkov wrote:
> Hi,
> 
> pls update my key as it has new UID added and old, now invalid ones
> removed.

Updated.

-K
