Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D574320E
	for <keys@linux.kernel.org>; Tue,  7 Jun 2022 21:29:12 +0000 (UTC)
Received: by mail-qt1-f173.google.com with SMTP id j8so10863469qtn.13
        for <keys@linux.kernel.org>; Tue, 07 Jun 2022 14:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=8t4lV6PQOOcGkqmzizYqfY0Uu2HGlb0danFAsnvooFQ=;
        b=M/K7Y3TY3wfKSZZv0L/HbblBD98xQgtXPjGbMo5D3A2qxZ1kjLa4VTDi+mutzlEw98
         aAxtuX3p3SXtnzN1CmOyqK/UWg2JoVOQSOimITHbiJ/+2cZRSrFNSUhQOXglCL9GaTJB
         lc6RH9G3A6Oc7rje9Y47KIuX0ckGEM7FPZR6Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8t4lV6PQOOcGkqmzizYqfY0Uu2HGlb0danFAsnvooFQ=;
        b=ELNbRWosXF/90nC3ty+2Gw0kaiyoZpFGpDQRkgUnO9gd45b51jUnKcbKe+svNr626I
         U1xr5qkGqzCRcuCAqHWKBKR1WJkXUJ9Vc85RmOK9TDE8Cg6miI+dC8Mqrrh/DLwKkevM
         dvrk5WqgGdXCb9sP73rjld/bYYDJEH35oCpNQja5QCsO+O0TwAH8ecg2BYVaQOdqfdg9
         c/IH2gsA3LlIoiWC+Vh245nNNfOj1aaeUDr0thuvVbCNHu+TWJ7jzGJ75XKDNKsZkv60
         zp8B479VU0HPxRGb8oGGm+rcVK70duB/95Ip6iSDf5c6+BKXBqztTOEKcLJDRgPNAobL
         1txQ==
X-Gm-Message-State: AOAM530fHRqH+NAHSWOSX+41IVi5I37hhV7eXaT+xRhPGnyaHZvZjikC
	26UoAiByxjdVnjgIOXo3WlXPILDL8/7MCA==
X-Google-Smtp-Source: ABdhPJz5fvpw5z4Ki7ZcwACVAuNRaAJMSfDiIBW564XM/geTsOsL2zvpaOlD1SehFan8j5i5FNY8dw==
X-Received: by 2002:a05:622a:1793:b0:304:f3d1:7bec with SMTP id s19-20020a05622a179300b00304f3d17becmr7139494qtk.555.1654637351512;
        Tue, 07 Jun 2022 14:29:11 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-245.dsl.bell.ca. [209.226.106.245])
        by smtp.gmail.com with ESMTPSA id e5-20020ac81305000000b00304e38fb3dasm8123599qtj.35.2022.06.07.14.29.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 14:29:11 -0700 (PDT)
Date: Tue, 7 Jun 2022 17:29:09 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Tejun Heo <tj@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: tj@kernel.org
Message-ID: <20220607212909.knv7zmci737nozh3@meerkat.local>
References: <Yp+ubn2KG/vohRI8@slm.duckdns.org>
 <20220607202824.5nhr4aeii2s4q2ds@meerkat.local>
 <Yp+54z+jHbBrsv49@slm.duckdns.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <Yp+54z+jHbBrsv49@slm.duckdns.org>

On Tue, Jun 07, 2022 at 10:49:39AM -1000, Tejun Heo wrote:
> Hello, Konstantin.
> 
> On Tue, Jun 07, 2022 at 04:28:24PM -0400, Konstantin Ryabitsev wrote:
> > On Tue, Jun 07, 2022 at 10:00:46AM -1000, Tejun Heo wrote:
> > > -----BEGIN PGP PUBLIC KEY BLOCK-----
> > 
> > There are no signatures on this key, so we cannot accept it into the keyring.
> > Did you lose access to your previous key, 19F81DC583926170 ?
> 
> Yeah, many years ago. I got signatures from Kyle, Jakub and Paul.

Thanks, I was able to retrieve the signatures from the ubuntu keyserver.
Your key has been updated and the old key removed.

Regards,
Konstantin
