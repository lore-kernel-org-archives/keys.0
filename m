Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E7E66FC7
	for <keys@linux.kernel.org>; Wed, 26 Apr 2023 20:54:03 +0000 (UTC)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-3ef31b7b868so65706471cf.2
        for <keys@linux.kernel.org>; Wed, 26 Apr 2023 13:54:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1682542442; x=1685134442;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZSOI+YMyj88VQEXie3OkA3BwP4KzWEfkY9f6EFUvVkg=;
        b=Jb3MAKBac24Iy2U88dF+zilU4qN/FgpfyMpiyPrynhYlnKidLyw5renCuibrjzrywg
         O+Oub22gmQEhkY6feEKlD4my29+w304zNXoAtmhbTc8zzUXuQQOZBR+/qiSqpYlNykMq
         sVCQra6YlEx0PidwE8BDKIQkwZkpMjnH+uImI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682542442; x=1685134442;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZSOI+YMyj88VQEXie3OkA3BwP4KzWEfkY9f6EFUvVkg=;
        b=Ramh/3QzOTHicBvDezzLiv3YMXzSJy7SOSzRrRvsphlLQO47q4v3UC04rwjIarSw5R
         VOqAkyua7LPViRFTdViXIem6MBvmtCNTcaxlV3CjgxKVmYl5dQcjpo9v+o2hSD1YGcNt
         zWY/Wmho+KNn/UgGQS4HloY80rWS9OgzjV1NjW2dH6UwaDn6zsBKIc2ucPHOD+7KKADa
         YfP4tJSu+nXSplGFlQf4z3mfhqOfMHSuMFm7ZL0JjFOkdaI7uGNTEVT/jGUGPK1IGHUB
         vatt21xI2u70OX01iRBCVZAeCECbbU1vgSosUb+AYXnJrhJAOy7g0VwfK7MYhU2TEdmo
         PNSA==
X-Gm-Message-State: AAQBX9cFna3Q4E5G2cRAkKQYCkNrJIA8bvm21l/KjcyOp40Jj0aC0cSQ
	4KA2cvl5CIqywL4aJ4Ncd91O+g==
X-Google-Smtp-Source: AKy350ZoHk0yoYs2D3EixOR/67vRNatb9SfDIFFGCOq4XDbYJU4Fn3Ouk4pcqMV4Gy5fWYXfyF8rtw==
X-Received: by 2002:ac8:7f01:0:b0:3ef:3b5f:9aab with SMTP id f1-20020ac87f01000000b003ef3b5f9aabmr37219171qtk.56.1682542442217;
        Wed, 26 Apr 2023 13:54:02 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-132.dsl.bell.ca. [209.226.106.132])
        by smtp.gmail.com with ESMTPSA id bq24-20020a05622a1c1800b003f018e18c35sm3163304qtb.27.2023.04.26.13.54.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Apr 2023 13:54:01 -0700 (PDT)
Date: Wed, 26 Apr 2023 16:54:00 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: keys@linux.kernel.org
Subject: Re: your mail
Message-ID: <20230426-clambake-stoppable-7b0403@meerkat>
References: <ca7c453e-2edb-a27a-43d8-c9111280db26@linaro.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ca7c453e-2edb-a27a-43d8-c9111280db26@linaro.org>

On Wed, Apr 26, 2023 at 03:35:10PM +0100, Bryan O'Donoghue wrote:

> -----BEGIN PGP PUBLIC KEY BLOCK-----

Hello:

There are no signatures on this key that we recognize, so we cannot include it
into the kernel.org keyring. Please get at least 2 signatures from someone who
is already in the keyring (or has a kernel.org account) and resubmit.

-K
