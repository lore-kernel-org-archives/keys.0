Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFB838F78
	for <keys@linux.kernel.org>; Tue, 21 Feb 2023 21:47:04 +0000 (UTC)
Received: by mail-qv1-f44.google.com with SMTP id ff4so6446721qvb.2
        for <keys@linux.kernel.org>; Tue, 21 Feb 2023 13:47:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5jSNGFlKXPrlxJJ6NpBpC9GLydaPbFerwhwZQ+FRoLk=;
        b=F8hQT3pfVUTup2lOtqgjvrLArgCx7sRUOm8HVtIGSiTk/Ceel0BlnWfIdtfFGLQNSe
         puZs5AuXCMTcn9huSI24DEb2jB7QNZVxIoM3Y7+FfYyOe0jM2cUjKqdE0Wuo0FKSUdDU
         I32w8UB0ip8LwztO0lXHuhbrRf8HLrwoIjTuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5jSNGFlKXPrlxJJ6NpBpC9GLydaPbFerwhwZQ+FRoLk=;
        b=gDBPEhzNuXeu3Cb4CZu3Uwu7uwgNZNTpZjs1AYBuja0laljBDhhlfEz+8UX84UGtHn
         bwJ9OBfrpnlbLRMPoVA5JyvJXbKF2jJw/0Z9cLvBmY3VigBu8S4s+A4oBh/G8MuVr+tw
         NEskXpmwVDUW+rZfyk398JJfm5dg4+kvF9wBl9B+1JsGLPi63YCDE/jP/PoY8f3VgEIS
         Ihi+i661gV+3WFBMpIS3gKG0T8V5BvRJsYA0o5O6gvRTwkL7UGSfVlUgNqf9pwQSm78I
         D+tAFH8LpKjDA7uTCgrJXZwpo0ZuR7UufGKacML0YuS5TbsR/x8Y7ZLvl+Zve1mbwHRx
         f8zA==
X-Gm-Message-State: AO0yUKXL2OjAiDbsjA/KKOb14FHyzYHUPUGL/iW4n1xBl0y4c4ANQAC8
	sqGrR7QWUW/8KN/nMlo0ZavzOA==
X-Google-Smtp-Source: AK7set8fDTWgop1sgPjFQDivlmFLpGmMzlmdRwiSDs2OkAmBfmbwUSlUqKW2ifh0osfATncs/0uv8w==
X-Received: by 2002:ad4:5baa:0:b0:56b:f178:f45b with SMTP id 10-20020ad45baa000000b0056bf178f45bmr11171975qvq.13.1677016023579;
        Tue, 21 Feb 2023 13:47:03 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-7.dsl.bell.ca. [209.226.106.7])
        by smtp.gmail.com with ESMTPSA id 203-20020a3708d4000000b0071de2b6d439sm2901954qki.49.2023.02.21.13.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Feb 2023 13:47:03 -0800 (PST)
Date: Tue, 21 Feb 2023 16:47:01 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Andrew Cooper <andrew.cooper3@citrix.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated key for Andrew Cooper
Message-ID: <20230221214701.bikmpnycycxf62j3@meerkat.local>
References: <16e57fad-ff1a-8e9f-c04d-493e880060b2@citrix.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <16e57fad-ff1a-8e9f-c04d-493e880060b2@citrix.com>

Looks like we already pulled in this update via a periodic sync from
keyserver.ubuntu.com.

Best wishes,
-K
